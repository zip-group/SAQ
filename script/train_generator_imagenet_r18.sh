# Remember to replace the path of dataset and the path pretrained model
python -m torch.distributed.launch --nproc_per_node=4 --master_port=66630 --use_env train_controller.py --save_path ./output/imagenet/generator/r18/ --data_path path_of_dataset --dataset imagenet100 --lr 0.01 --clip_lr 0.01 --opt_type QSAM_SGD --network qsamsresnet18 --rho 0.3 --pretrained path_of_pretrained_model --qw 3.0 --qa 3.0 --quan_type switchable_LIQ_wn_qsam --gpu 4,5,6,7 --lr_scheduler_type multi_step --n_epochs 100 --loss_lambda 5e-3 --suffix generator_01 --c_lr 5e-4 --entropy_coeff 5e-3 --target_bops 5.32 --bit_warmup_epochs 10 --batch_size 64 --val_num 50000