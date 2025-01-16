# Installation

## メモ

dockerディレクトリで `run.sh` を実行して以降の手順

```bash
echo 'export PATH=$PATH:/home/sakoda/.local/bin' >> ~/.bashrc
source ~/.bashrc

sudo apt-get update && sudo apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0

python -m pip install --upgrade pip
cd ~/work/EfficientZeroV2
pip3 install -r requirements.txt
```

## Prerequisites & Installation

Before starting training, you need to build the c++/cython style external packages. 
```
cd ez/mcts/ctree
bash make.sh
cd -
```
    

## Some Tips

1. Install `gym` version 0.22.0 (previously 0.15.7, which caused the error: `cannot import name ‘Monitor’ from 'gym.wrappers'`):
   ```bash
   pip install gym==0.22.0
   ```

2. Install `wandb` version 0.14.2 (the previous environment had no version restrictions, but needs downgrading to avoid `TypeError`):
   ```bash
   pip install wandb==0.14.2
   ```

3. Install `reference` version 0.31.0 (version 0.30.2 fails to import `referencing.jsonschema`):
   ```bash
   pip install reference==0.31.0
   ```

4. Install `dmc2gym` from GitHub:
   ```bash
   pip install git+git://github.com/denisyarats/dmc2gym.git
   ```

5. Install `imageio` with `ffmpeg` and `pyav` to ensure `eval_worker` runs correctly:
   ```bash
   pip install imageio[ffmpeg]
   pip install imageio[pyav]
   ```

## Compilation Instructions

1. In addition to compiling `ctree`, also compile `ctree_v2` (If you find the training process is stuck, this issue exists in some cases.):
   ```bash
   cd ez/mcts/ctree_v2
   sh make.sh
   ```
1. In addition to compiling `ctree`, also compile `ori_ctree` :
   ```bash
   cd ez/mcts/ori_ctree
   sh make.sh
   ```
