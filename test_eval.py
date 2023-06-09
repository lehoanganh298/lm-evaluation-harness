import os
os.environ['CUDA_VISIBLE_DEVICES']='5'
os.environ['HF_DATASETS_CACHE']='/data4/share_nlp/data/luannd/dataset_hub/'
from lm_eval import tasks, evaluator
import os
# os.environ['HTTPS_PROXY']='http://10.60.28.99:81'
# os.environ['HTTP_PROXY']='http://10.60.28.99:81'
# ,load_in_8bit=True,device_map='auto'
# results = evaluator.simple_evaluate(
# 	model='hf-causal-experimental',
# 	# model_args='pretrained=/data4/share_nlp/data/luannd/pretrained_model/bloom-7b1/',
# 	model_args='pretrained=/data4/share_nlp/data/luannd/pretrained_model/LLaMA_hf/7B/',
# 	tasks=['squad2'],
# 	num_fewshot=2,
# 	batch_size=None,
# 	device=None,
# 	limit=3,
# 	no_cache=True
# )


results = evaluator.simple_evaluate(
	model='hf-causal-experimental',
	model_args='pretrained=/home/bloom7b1/',
	# model_args='pretrained=/data4/share_nlp/data/luannd/pretrained_model/LLaMA_hf/7B/',
	tasks=['kiki_qae2squad'],
	num_fewshot=3,
	batch_size=None,
	limit=50,
	no_cache=True
)
print(results)