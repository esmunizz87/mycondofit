GPUS_PER_NODE=2
export MASTER_PORT=8524
export CUDA_VISIBLE_DEVICES=2,6
python -m torch.distributed.run --nproc_per_node=${GPUS_PER_NODE} --master_port=${MASTER_PORT} evaluate.py --cfg-path minigpt4/projects/qformer_moe_vicuna/eval/mix_vqa_coco_vicuna_eval.yaml

# python evaluate.py --cfg-path minigpt4/projects/qformer_moe_vicuna/eval/mix_vqa_coco_vicuna_eval.yaml
