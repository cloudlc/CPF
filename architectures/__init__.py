import architectures.resnet34
import architectures.googlenet
import architectures.bninception

def select(arch, opt):
    if 'resnet34' in arch:
        return resnet34.Network(opt)
    if 'googlenet' in arch:
        return googlenet.Network(opt)
    if 'bninception' in arch:
        return bninception.Network(opt)
