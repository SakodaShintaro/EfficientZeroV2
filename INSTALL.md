# Installation

## メモ

dockerディレクトリで `run.sh` を実行して以降の手順

```bash
echo 'export PATH=$PATH:/home/sakoda/.local/bin' >> ~/.bashrc
source ~/.bashrc

sudo apt-get update && sudo apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libopengl0 \
    libegl1

python -m pip install --upgrade pip
cd ~/work/EfficientZeroV2
pip3 install -r requirements.txt
```

## Prerequisites & Installation

Before starting training, you need to build the c++/cython style external packages.

```bash
cd ez/mcts/ctree
bash make.sh
cd -
```

## Some Tips

Install `reference` version 0.31.0 (version 0.30.2 fails to import `referencing.jsonschema`):

```bash
pip install reference==0.31.0
```

## Compilation Instructions

1. In addition to compiling `ctree`, also compile `ctree_v2` (If you find the training process is stuck, this issue exists in some cases.):

```bash
cd ez/mcts/ctree_v2
sh make.sh
```

1. In addition to compiling `ctree`, also compile `ori_ctree` :

```bash
cd ../ori_ctree/
sh make.sh
```
