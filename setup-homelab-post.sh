#!/bin/bash

# --------------------------------------------
# HomeLab 1.0 - Post-Reboot Setup
# Python (Miniconda), PyTorch, AI Dev Stack
# --------------------------------------------

echo "🚀 Starting post-reboot AI environment setup..."

# Download and install Miniconda (lightweight Python package manager)
cd /tmp
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3

# Initialize Conda for the current shell
eval "$($HOME/miniconda3/bin/conda shell.bash hook)"
conda init
source ~/.bashrc

# Accept Anaconda Terms of Service (required as of 2024)
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# Create a new Conda environment for AI work
conda create -n ai python=3.11 -y
conda activate ai

# Install PyTorch with GPU support (CUDA 11.8)
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
# - torch: Core ML/DL framework
# - torchvision: Tools for computer vision (datasets, transforms)
# - torchaudio: Audio processing for speech/ML

# Install commonly used AI and data science libraries
pip install transformers datasets scikit-learn pandas numpy matplotlib seaborn jupyterlab

# 📦 What's included:
# - transformers: Pretrained LLMs from Hugging Face (BERT, GPT, etc.)
# - datasets: Access to hundreds of AI-ready datasets
# - scikit-learn: Traditional ML algorithms (SVMs, random forest, etc.)
# - pandas: Tabular data processing and manipulation
# - numpy: Core numerical computing (arrays, math)
# - matplotlib: Plotting graphs and charts
# - seaborn: Statistical plotting built on matplotlib
# - jupyterlab: Browser-based notebooks and dev UI

# Test GPU visibility in PyTorch
python -c "import torch; print('✅ GPU available:', torch.cuda.is_available()); print('🖥️ Using:', torch.cuda.get_device_name(0))"

# 📌 Register Conda environment with Jupyter
conda install -y ipykernel nb_conda_kernels

# Register the 'ai' environment as a Jupyter kernel
python -m ipykernel install --user --name=ai --display-name "Python (AI Lab)"

echo "✅ Post-reboot setup complete. You're ready to build AI projects!"
