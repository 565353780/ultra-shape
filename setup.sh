cd ..
git clone https://github.com/PKU-YuanGroup/UltraShape-1.0.git
git clone --depth 1 --recursive https://github.com/ashawkey/cubvh
git clone --depth 1 https://github.com/SarahWeiii/diso.git
git clone --depth 1 https://github.com/facebookresearch/pytorch3d.git
git clone --depth 1 --recursive -b v2.8.3 https://github.com/Dao-AILab/flash-attention.git
git clone --depth 1 https://github.com/thu-ml/SageAttention.git

pip install ninja

conda install -c conda-forge libffi=3.3 -y
conda uninstall graalpy -y

pip install torch==2.5.1 torchvision==0.20.1 torchaudio==2.5.1 \
  --index-url https://download.pytorch.org/whl/cu121

pip install accelerate==1.1.1 diffusers==0.30.0 einops==0.8.1 \
  huggingface_hub==0.36.0 imageio==2.36.0 ipywidgets==8.1.7 \
  jaxtyping==0.3.4 matplotlib==3.10.8 numpy==1.24.4 \
  omegaconf==2.3.0 opencv_python==4.10.0.84 \
  opencv_python_headless==4.11.0.86 pandas==2.3.3 Pillow==12.0.0 \
  pymeshlab==2022.2.post3 pythreejs==2.4.2 pytorch_lightning==1.9.5 \
  PyYAML==6.0.2 safetensors==0.7.0 scikit-image==0.24.0 timm==1.0.22 \
  torchdiffeq==0.2.5 tqdm==4.66.5 transformers==4.37.2 trimesh==4.4.7 \
  typeguard==4.3.0 wandb==0.23.1

pip install deepspeed onnxruntime rembg tensorboard

cd cubvh
python setup.py install

# pip install diso==0.1.4
cd ../diso
python setup.py install

cd ../pytorch3d
python setup.py install

cd ../flash-attention
python setup.py install

# sageattention==1.0.6
cd ../SageAttention
python setup.py install

#pip install https://data.pyg.org/whl/torch-2.5.0%2Bcu121/torch_cluster-1.6.3%2Bpt25cu121-cp310-cp310-linux_x86_64.whl
pip install torch-cluster \
  -f https://data.pyg.org/whl/torch-2.5.0+cu121.html
