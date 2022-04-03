export CUDA_VISIBLE_DEVICES=0,1
root_dir1=/data/qilei
root_dir2=/data3/qilei_chen

python train.py --img 1280 \
                        --batch 32 \
                        --epochs 128 \
                        --data trans_drone_cat3_v2.yaml \
                        --weights yolov5s.pt \
                        --project $root_dir1/work_model_dirs/yolov5/trans_drone_cat3/yolov5s \
                        --name exp_yolov5_obb \
                        --exist-ok \
                        --device 0 \
                        --hyp data/hyps/obb/hyp.finetune_td.yaml \
                        --cfg models/yolov5s.yaml