# # model=/data4/share_nlp/data/luannd/pretrained_model/LLaMA_hf/7B/
# model=/data4/share_nlp/data/luannd/pretrained_model/bloom-7b1/
# tasks=squad2
# CUDA_VISIBLE_DEVICES=4,5 python main.py \
#     --model hf-causal-experimental \
#     --num_fewshot 3 \
#     --limit 500 \
#     --model_args pretrained=$model \
#     --tasks $tasks \
#     --output_path /data4/share_nlp/data/anhlh/gpt_experiment/lm-evaluation-harness/bloom7b1-squad.json
#     # --device=cuda:0
    
# # ,load_in_8bit=True,device_map='auto'







model=$1
tasks=$2
limit=$3
python main.py \
    --model hf-causal-experimental \
    --num_fewshot 5 \
    --model_args pretrained=/home/$model,max_length=2048 \
    --tasks $tasks \
    --output_path "/home/eval_results/${model}-${tasks}-${limit}.json" \
    --limit $limit
    # --no_cache 
    # --device=cuda:0