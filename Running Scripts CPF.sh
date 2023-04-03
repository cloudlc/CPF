
"""============= CPF Runs --- CUB200-2011 ===================="""
python main.py --dataset cub200 --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 56 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 9.0 --loss_cpf_sn 9.0 --loss_cpf_mu 0.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset cub200 --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 57 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 9.0 --loss_cpf_sn 9.0 --loss_cpf_mu 0.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset cub200 --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 58 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 9.0 --loss_cpf_sn 9.0 --loss_cpf_mu 0.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset cub200 --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 59 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 9.0 --loss_cpf_sn 9.0 --loss_cpf_mu 0.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset cub200 --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 60 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 9.0 --loss_cpf_sn 9.0 --loss_cpf_mu 0.0 --fc_lr 0.02 --lr 0.00005


"""============= CPF Runs --- CARS196 ===================="""
python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 56 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 9.0 --loss_cpf_sn 9.0 --loss_cpf_mu 0.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 57 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 9.0 --loss_cpf_sn 9.0 --loss_cpf_mu 0.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 58 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 9.0 --loss_cpf_sn 9.0 --loss_cpf_mu 0.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 59 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 9.0 --loss_cpf_sn 9.0 --loss_cpf_mu 0.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 60 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 9.0 --loss_cpf_sn 9.0 --loss_cpf_mu 0.0 --fc_lr 0.02 --lr 0.00005


"""============= CPF Runs --- Online Products ===================="""
python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 56 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 3.0 --loss_cpf_sn 8.0 --loss_cpf_mu 1.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 57 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 3.0 --loss_cpf_sn 8.0 --loss_cpf_mu 1.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 58 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 3.0 --loss_cpf_sn 8.0 --loss_cpf_mu 1.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 59 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 3.0 --loss_cpf_sn 8.0 --loss_cpf_mu 1.0 --fc_lr 0.02 --lr 0.00005

python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project Cpf 
--group CUB_CPF --seed 60 --gpu 0 --bs 90 --samples_per_class 2 --loss cpf --arch resnet34_frozen_normalize 
--loss_cpf_tau 0.38 --loss_cpf_sp 3.0 --loss_cpf_sn 8.0 --loss_cpf_mu 1.0 --fc_lr 0.02 --lr 0.00005

 
