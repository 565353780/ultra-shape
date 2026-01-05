cd ../UltraShape-1.0

DATA_FOLDER=$HOME/chLi/Dataset/MM/Match/longren/

PYTHONPATH=$PYTHONPATH:$(pwd) \
  python scripts/infer_dit_refine.py \
  --ckpt $HOME/chLi/Model/UltraShape/ultrashape_v1.pt \
  --image $DATA_FOLDER/longren.png \
  --mesh $DATA_FOLDER/longren_stage1.glb \
  --config configs/infer_dit_refine.yaml \
  --output_dir $DATA_FOLDER
