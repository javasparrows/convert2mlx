#!/bin/bash

# Set the model name
MODEL_NAME=meta-llama/Llama-3.1-8B  # Specify the model name to be converted.
SAVE_NAME=Llama-3.1-8B-mlx-8bit     # Choose a name for the converted model (feel free to customize).
QUANTIZE=true                       # Enable quantization for optimized performance.
Q_BITS=8                            # Set the number of quantization bits.

# Download the model using huggingface-cli
huggingface-cli download $MODEL_NAME config.json model.safetensors model.safetensors.index.json
huggingface-cli download $MODEL_NAME --include *.safetensors


CMD="mlx_lm.convert --hf-path $MODEL_NAME --mlx-path $SAVE_NAME"

# If the --quantize option is specified
if $QUANTIZE; then
  CMD="$CMD --quantize --q-bits $Q_BITS"
fi

# Execute the command
echo -e "\033[33m[*]\033[0m Executing the command: $CMD"
$CMD
echo -e "\033[32m[✔]\033[0m Command execution completed!"