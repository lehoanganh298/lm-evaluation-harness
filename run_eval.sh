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
# model=/home/gpt-j-6B-vietnamese-news
# model=bloomz7b1mt
model=bloom7b1
# model=/home/kilm-writing
# model=/home/bloom-3b
# tasks=arc_easy
tasks=kiki_qac
# tasks=kiki_qae2squad
# tasks=zing_quiz
limit=10000
python main.py \
    --model hf-causal-experimental \
    --num_fewshot 5 \
    --limit $limit \
    --model_args pretrained=/home/$model,max_length=2048 \
    --tasks $tasks \
    --output_path "/home/eval_results/${model}-${tasks}-${limit}.json" \
    # --no_cache 
    # --device=cuda:0
    
# ,load_in_8bit=True,device_map='auto'
