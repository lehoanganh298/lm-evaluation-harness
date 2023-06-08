export OPENAI_API_SECRET_KEY="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"
tasks=triviaqa
CUDA_VISIBLE_DEVICES=4,5,6,7 python main.py \
    --model gpt3 \
    --num_fewshot 5 \
    --limit 500 \
    --model_args engine=davinci \
    --tasks $tasks 

# CUDA_VISIBLE_DEVICES=4,5,6,7 python scripts/write_out.py \
#     --tasks $tasks \
#     --num_fewshot 5 \
#     --num_examples 100 \
#     --output_base_path /data4/share_nlp/data/anhlh/gpt_experiment/lm-evaluation-harness