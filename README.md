# convert2mlx

This repository provides a shell script `convert2mlx.sh` to convert large language models (LLMs) from Hugging Face format to MLX format. This is particularly useful for deploying LLMs on Apple Silicon Macs, where MLX format offers optimized performance.

## Background

Large language models (LLMs) are increasingly used in various applications. However, deploying these models efficiently can be challenging, especially on Apple Silicon Macs. MLX format is optimized for these machines, offering improved performance compared to the standard Hugging Face format.

This repository aims to simplify the conversion process by providing a user-friendly shell script, `convert2mlx.sh`, that automates the conversion of LLMs from Hugging Face format to MLX format.

## Usage

1.  **Install the necessary tools.** Make sure you have `huggingface-cli` and `mlx_lm` installed. You can install them using pip:

    ```bash
    pip install huggingface-cli mlx-lm
    ```

2.  **Clone the repository.**

    ```bash
    git clone https://github.com/your-username/convert2mlx.git
    ```

3.  **Modify the script.** Open `convert2mlx.sh` and modify the following variables:

    *   `MODEL_NAME`: The name of the Hugging Face model you want to convert.
    *   `SAVE_NAME`: The desired name for the converted MLX model.
    *   `QUANTIZE`: Set to `true` to quantize the model (optional).
    *   `Q_BITS`: Quantization bits (optional, default is 8).

4.  **Run the script.**

    ```bash
    bash convert2mlx.sh
    ```

The script will download the specified Hugging Face model and convert it to MLX format. If quantization is enabled, the model will be quantized to the specified number of bits.

## Example

To convert the `meta-llama/Llama-3.1-8B` model and quantize it to 8 bits, you would modify `convert2mlx.sh` as follows:

```bash
MODEL_NAME=meta-llama/Llama-3.1-8B  # Specify the model name to be converted.
SAVE_NAME=Llama-3.1-8B-mlx-8bit     # Choose a name for the converted model (feel free to customize).
QUANTIZE=true                       # Enable quantization for optimized performance.
Q_BITS=8                            # Set the number of quantization bits.
```

Then, run the script:

```bash
bash convert2mlx.sh
```
