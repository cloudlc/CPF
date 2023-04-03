import numpy as np
import torch, torch.nn as nn, torch.nn.functional as F
import batchminer
 
"""================================================================================================="""
ALLOWED_MINING_OPS  = None
REQUIRES_BATCHMINER = False
REQUIRES_OPTIM      = True

### This implementation follows the pseudocode provided in the original paper.
class Criterion(torch.nn.Module):
    def __init__(self, opt):
        super(Criterion, self).__init__()
        self.par = opt

        ####
        self.in_features = opt.embed_dim
        self.out_features = opt.n_classes

        self.weight = nn.Parameter(torch.FloatTensor(self.out_features, self.in_features))
        nn.init.xavier_uniform_(self.weight)
        ####
        self.ls_eps = 0        
        self.lr    = opt.loss_cpf_lr

        self.tau = opt.loss_cpf_tau
        self.psi = opt.loss_cpf_psi
        self.sp = opt.loss_cpf_sp
        self.sn = opt.loss_cpf_sn        
        self.mu = opt.loss_cpf_mu
        self.b = opt.loss_cpf_b       


        ####
        self.ALLOWED_MINING_OPS  = ALLOWED_MINING_OPS
        self.REQUIRES_BATCHMINER = REQUIRES_BATCHMINER
        self.REQUIRES_OPTIM      = REQUIRES_OPTIM

    def forward(self, batch, labels, **kwargs):
        labels = labels.to(self.par.device)
        cosine = F.linear(F.normalize(batch), F.normalize(self.weight))
        
        one_hot = torch.zeros(cosine.size(), device=self.par.device)
        one_hot.scatter_(1, labels.view(-1, 1).long(), 1)
        
        tp = ((cosine.clamp(min=0.0) * one_hot) * 2).sum() + self.b
        
        if self.ls_eps > 0:
            one_hot = (1 - self.ls_eps) * one_hot + self.ls_eps / self.out_features

        lossp = ((1.0-cosine) * torch.exp((1.0-cosine) * self.sp).detach() * one_hot).sum()
            
        mask = cosine > self.tau
        cosine = cosine[mask]
        lossn =   ((cosine - self.psi) 
                    * torch.exp((cosine - self.mu) * self.sn).detach()
                    * (1 - one_hot[mask])).sum()
        
        loss = (1.0 - (tp)/(tp + lossp + lossn))

        return loss
