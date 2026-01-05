cd ../UltraShape-1.0

PYTHONPATH=$PYTHONPATH:$(pwd) \
  python scripts/infer_dit_refine.py \
  --ckpt $HOME/chLi/Model/UltraShape/ultrashape_v1.pt \
  --image $HOME/chLi/Dataset/GS/haizei_1/input/image_4.png \
  --mesh $HOME/chLi/Dataset/GS/haizei_1/mmv2/image_4.glb \
  --config configs/infer_dit_refine.yaml
