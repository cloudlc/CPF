"""============================================================================================================="""
######## LIBRARIES #####################
import numpy as np



"""============================================================================================================="""
################# ACQUIRE NUMBER OF WEIGHTS #################
def gimme_params(model):
    model_parameters = filter(lambda p: p.requires_grad, model.parameters())
    params = sum([np.prod(p.size()) for p in model_parameters])
    return params


################# SAVE TRAINING PARAMETERS IN NICE STRING #################
def gimme_save_string(opt):
    varx = vars(opt)
    base_str = ''
    for key in varx:
        base_str += str(key)
        if isinstance(varx[key],dict):
            for sub_key, sub_item in varx[key].items():
                base_str += '\n\t'+str(sub_key)+': '+str(sub_item)
        else:
            base_str += '\n\t'+str(varx[key])
        base_str+='\n\n'
    return base_str


#############################################################################
import torch, torch.nn as nn

class DataParallel(nn.Module):
    def __init__(self, model, device_ids, dim):
        super().__init__()
        self.model    = model.model
        self.network  = nn.DataParallel(model, device_ids, dim)

    def forward(self, x):
        return self.network(x)
        
def save_checkpoint(model, optimizer, save_path, metrics, epoch):
    print('Save checkpoint to', save_path)
    save_dict = {
        'model': model.state_dict(),
        'optimizer': optimizer.state_dict(),
        'metrics': metrics,
        'epoch': epoch,
    }
    torch.save(save_dict, save_path)


def load_checkpoint(model, optimizer, save_path):
    print('Load checkpoint from', save_path)
    state_dict = torch.load(save_path)
    model_state_dict = {}
    for k, v in state_dict['model'].items():
        if k.startswith('module'):
            model_state_dict[k[7:]] = v
        else:
            model_state_dict[k] = v

    model.load_state_dict(model_state_dict)
    if optimizer is not None:
        optimizer.load_state_dict(state_dict['optimizer'])
    metrics = state_dict['metrics']
    epoch = state_dict.get('epoch', 0)
    return metrics, epoch
