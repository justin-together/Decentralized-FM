from typing import List

from abc import ABC, abstractmethod
from enum import Enum

import torch


class ReduceOperation(Enum):
    SUM = 1


class Communicator(ABC):
    @abstractmethod
    def barrier(self) -> None:
        raise NotImplementedError()

    @abstractmethod
    def store_set(self, key, value):
        raise NotImplementedError()

    @abstractmethod
    def store_get(self, key):
        raise NotImplementedError()

    @abstractmethod
    def send(self, tensor: torch.Tensor, dst: int, stream: int = -1) -> None:
        raise NotImplementedError()

    @abstractmethod
    def recv(self, tensor: torch.Tensor, src: int, stream: int = -1) -> None:
        raise NotImplementedError()

    @abstractmethod
    def broadcast(self, tensor: torch.Tensor, src: int, stream: int = -1) -> None:
        raise NotImplementedError()

    @abstractmethod
    def reduce(self,
               tensor: torch.Tensor,
               dst: int,
               stream: int = -1,
               op: ReduceOperation = ReduceOperation.SUM) -> None:
        raise NotImplementedError()

    @abstractmethod
    def all_reduce(self,
                   tensor: torch.Tensor,
                   stream: int = -1,
                   op: ReduceOperation = ReduceOperation.SUM) -> None:
        raise NotImplementedError()

    @abstractmethod
    def scatter(self,
                tensor: torch.Tensor,
                scatter_list: List[torch.Tensor],
                src: int,
                stream: int = -1) -> None:
        raise NotImplementedError()

    @abstractmethod
    def gather(self,
               tensor: torch.Tensor,
               gather_list: List[torch.Tensor],
               dst: int,
               stream: int = -1) -> None:
        raise NotImplementedError()

    @abstractmethod
    def all_to_all(self,
                   output_tensor_list: List[torch.Tensor],
                   input_tensor_list: List[torch.Tensor],
                   stream: int = -1) -> None:
        raise NotImplementedError()

    @abstractmethod
    def all_gather(self,
                   tensor: torch.Tensor,
                   output_tensor_list: List[torch.Tensor],
                   stream: int = -1
                   ) -> None:
        raise NotImplementedError()

    @abstractmethod
    def all_reduce_opt(self,
                       tensor: torch.Tensor,
                       buffer: List[torch.Tensor],
                       stream_id: int = -1) -> None:
        raise NotImplementedError()
