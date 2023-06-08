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




# model=/data4/share_nlp/data/luannd/pretrained_model/LLaMA_hf/7B/
model=/data4/share_nlp/data/luannd/pretrained_model/bloom-7b1/
tasks=kiki_qae2squad
CUDA_VISIBLE_DEVICES=4 python main.py \
    --model hf-causal-experimental \
    --num_fewshot 5 \
    --limit 10 \
    --model_args pretrained=$model \
    --tasks $tasks \
    --output_path /data4/share_nlp/data/anhlh/gpt_experiment/lm-evaluation-harness/bloom7b1-kiki_qae2squad.json
    # --device=cuda:0
    
# ,load_in_8bit=True,device_map='auto'