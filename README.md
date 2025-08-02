# HomeLab Setup Scripts 🧠💻

This repository contains setup scripts for my personal AI workstation: **HomeLab 1.0**. It runs Ubuntu 22.04 and includes NVIDIA GPU drivers, Python tooling, and a full data science and deep learning environment.

---

## 💾 Contents

- `setup-homelab-pre.sh`  
  Installs system packages and NVIDIA drivers. Run this **before reboot**.

- `setup-homelab-post.sh`  
  Installs Miniconda, PyTorch with GPU support, and common AI libraries. Run this **after reboot**.

---

## 🧰 What's Installed

### System & GPU
- Ubuntu 22.04 LTS
- NVIDIA Driver 535
- Dev tools (`build-essential`, `git`, `tmux`, etc.)

### Python & AI Libraries
- **Python 3.11** (via Conda)
- **PyTorch** with CUDA 11.8 support
- **Transformers** – Pretrained NLP and LLM models
- **Datasets** – Hugging Face dataset manager
- **Scikit-learn** – Traditional machine learning
- **Pandas** – Tabular data processing
- **NumPy** – Numerical computing
- **Matplotlib & Seaborn** – Data visualization
- **JupyterLab** – Web-based notebook interface

---

## 🚀 Usage Instructions

1. Clone this repository:
   ```bash
   git clone https://github.com/xplayrerun/homelab-setup.git
   cd homelab-setup
   ```

2. Run the pre-reboot setup script:
   ```bash
   chmod +x setup-homelab-pre.sh
   ./setup-homelab-pre.sh
   ```

3. Reboot the system.

4. Run the post-reboot setup script:
   ```bash
   chmod +x setup-homelab-post.sh
   ./setup-homelab-post.sh
   ```

---

## 💡 Why This Exists

This is my personal AI workstation, built for:
- Learning PyTorch, Hugging Face, and GPU workloads
- Experimenting with LLMs and model fine-tuning
- Automating reproducible system setup from scratch

---

## 🔒 Notes

- Conda environments are not committed to version control
- You should install this only on personal, secure machines

---
## 🧠 Conda + Jupyter Integration

After setting up the `ai` Conda environment, it is registered with JupyterLab so it can be used in notebooks:

```bash
conda install -y ipykernel nb_conda_kernels
python -m ipykernel install --user --name=ai --display-name "Python (AI Lab)"
```

Once installed, open JupyterLab and select **"Python (AI Lab)"** as your kernel.
## 📁 Working Directory

Project notebooks and experiments are stored under:

```bash
~/Projects
```

Each experiment should live in its own subfolder.


