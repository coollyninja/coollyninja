docker run --gpus all --shm-size 1g \
  -e HUGGING_FACE_HUB_TOKEN=$HUGGINGFACEHUB_API_TOKEN \
  -p 8080:80 \
  -v $LLM_LOCAL_VOL:/data ghcr.io/huggingface/text-generation-inference:1.0.0 \
  --model-id $LLM_MODEL_ID
