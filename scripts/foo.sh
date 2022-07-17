#bash aws_run_batch_gpt3_random.sh rand3 2
#bash aws_run_batch_gpt3_random.sh rand3 3
#bash aws_run_batch_gpt3_random.sh rand3 4

bash aws_run_batch_gpt3_optimal.sh 2
bash aws_run_batch_gpt3_optimal.sh 3
bash aws_run_batch_gpt3_optimal.sh 4


#bash aws_run_batch_megatron.sh 2
#bash aws_run_batch_megatron.sh 3
#bash aws_run_batch_megatron.sh 4


#bash aws_run_megatron_scheduled_training.sh megatron_gpt3_xl_mp8_dp8.sh 8 1 1 24 1024 2
#sleep 10s
# bash copy_rank_last_logs.sh 35.89.154.20

#bash aws_run_megatron_scheduled_training.sh megatron_gpt3_xl_mp8_dp8.sh 8 1 1 24 1024 3
#sleep 10s
#bash copy_rank_last_logs.sh 35.89.154.20

#bash aws_run_megatron_scheduled_training.sh megatron_gpt3_xl_mp8_dp8.sh 8 1 1 24 1024 4
#sleep 10s
#bash copy_rank_last_logs.sh 35.89.154.20


