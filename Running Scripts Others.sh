"""============= Baseline Runs --- CUB200-2011 ===================="""
python main.py --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_ProxyNCA --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss proxynca --arch resnet34_frozen_normalize

python main.py --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_Angular --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss angular --batch_mining npair --arch resnet34_frozen

python main.py --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_ArcFace --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss arcface --arch resnet34_frozen_normalize

python main.py --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_Margin_b06_Distance --loss_margin_beta 0.6 --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss margin --batch_mining distance --arch resnet34_frozen_normalize

python main.py --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_Margin_b12_Distance --loss_margin_beta 1.2 --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss margin --batch_mining distance --arch resnet34_frozen_normalize

python main.py --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_SNR_Distance  --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss snr --batch_mining distance --arch resnet34_frozen_normalize

python main.py --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_MS --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss multisimilarity --arch resnet34_frozen_normalize



"""============= Baseline Runs --- CARS196 ===================="""
python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_ProxyNCA --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss proxynca --arch resnet34_frozen_normalize

python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_Angular --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss angular --batch_mining npair --arch resnet34_frozen

python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_ArcFace --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss arcface --arch resnet34_frozen_normalize

python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_Margin_b06_Distance --loss_margin_beta 0.6 --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss margin --batch_mining distance --arch resnet34_frozen_normalize

python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_Margin_b12_Distance --loss_margin_beta 1.2 --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss margin --batch_mining distance --arch resnet34_frozen_normalize

python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_SNR_Distance  --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss snr --batch_mining distance --arch resnet34_frozen_normalize

python main.py --dataset cars196 --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_MS --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss multisimilarity --arch resnet34_frozen_normalize


"""============= Baseline Runs --- Online Products ===================="""
python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_ProxyNCA --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss proxynca --arch resnet34_frozen_normalize

python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_Angular --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss angular --batch_mining npair --arch resnet34_frozen

python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_ArcFace --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss arcface --arch resnet34_frozen_normalize

python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_Margin_b06_Distance --loss_margin_beta 0.6 --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss margin --batch_mining distance --arch resnet34_frozen_normalize

python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_Margin_b12_Distance --loss_margin_beta 1.2 --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss margin --batch_mining distance --arch resnet34_frozen_normalize

python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_SNR_Distance  --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss snr --batch_mining distance --arch resnet34_frozen_normalize

python main.py --dataset online_products --kernels 2 --source $datapath --n_epochs 100 --log_online --project RevisitDML --group CUB_MS --seed 0 --gpu 0 --bs 112 --samples_per_class 2 --loss multisimilarity --arch resnet34_frozen_normalize