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
cd ../ctree_v2
sh make.sh
cd ../ori_ctree/
sh make.sh
```

## Train

```bash
cd ../../../
bash ./scripts/train.sh
```
