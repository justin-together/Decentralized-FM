from typing import List

import torch
import torch.distributed as dist

from .comm import Communicator, ReduceOperation

_reduce_op_to_torch = [
    None,
    dist.ReduceOp.SUM
]


class TorchDistCommunicator(Communicator):
    def __init__(self, rank, world_size, dist_url):
        dist.init_process_group(
            backend='gloo',
            init_method=dist_url,
            world_size=world_size,
            rank=rank
        )
        self.dist_store = dist.distributed_c10d._get_default_store()

    def barrier(self) -> None:
        dist.barrier()

    def store_set(self, key, value):
        self.dist_store.set(key, value)

    def store_get(self, key):
        return self.dist_store.get(key)

    def send(self, tensor: torch.Tensor, dst: int, stream: int = -1) -> None:
        dist.send(tensor, dst)

    def recv(self, tensor: torch.Tensor, src: int, stream: int = -1) -> None:
        dist.recv(tensor, src)

    def broadcast(self, tensor: torch.Tensor, src: int, stream: int = -1) -> None:
        dist.broadcast(tensor, src)

    def reduce(self,
               tensor: torch.Tensor,
               dst: int,
               stream: int = -1,
               op: ReduceOperation = ReduceOperation.SUM) -> None:
        dist.reduce(tensor, dst, _reduce_op_to_torch[op])

    def all_reduce(self,
                   tensor: torch.Tensor,
                   stream: int = -1,
                   op: ReduceOperation = ReduceOperation.SUM) -> None:
        dist.all_reduce(tensor, _reduce_op_to_torch[op])

    def scatter(self,
                tensor: torch.Tensor,
                scatter_list: List[torch.Tensor],
                src: int,
                stream: int = -1) -> None:
        dist.scatter(tensor, scatter_list, src)

    def gather(self,
               tensor: torch.Tensor,
               gather_list: List[torch.Tensor],
               dst: int,
               stream: int = -1) -> None:
        dist.gather(tensor, gather_list, dst)

    def all_to_all(self,
                   output_tensor_list: List[torch.Tensor],
                   input_tensor_list: List[torch.Tensor],
                   stream: int = -1) -> None:
        dist.all_to_all(output_tensor_list, input_tensor_list)

    def all_gather(self,
                   tensor: torch.Tensor,
                   output_tensor_list: List[torch.Tensor],
                   stream: int = -1
                   ) -> None:
        dist.all_gather(output_tensor_list, tensor)

    def all_reduce_opt(self,
                       tensor: torch.Tensor,
                       buffer: List[torch.Tensor],
                       stream_id: int = -1) -> None:
        raise NotImplementedError()
