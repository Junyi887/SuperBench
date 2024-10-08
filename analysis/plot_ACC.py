import numpy as np
import matplotlib.pyplot as plt
import torch
import os 

PATH = "/pscratch/sd/j/junyi012/superbench_v2/eval_buffer/"


def plot_acc(data_name = "era5",upscale_factor=16):
    fsize = 18
    labelsize = 12
    model_saved_list = ['FNO2D','EDSR', 'WDSR','SwinIR', ]
    model_name_list = ['FNO$^*$','EDSR', 'WDSR','SwinIR', ]
    title_list = ['Bicubic', 'SRCNN','FNO', 'subpixelCNN', 'EDSR', 'WDSR', 'SwinIR',]
    fig, ax = plt.subplots(figsize=(4.8,4.6),constrained_layout=True)
    jj = 0
    for name in model_saved_list:
        if os.path.exists(f"acc_{data_name}_{upscale_factor}_{name}.npy"):
            print("loading acc")
            acc = np.load(f"acc_{data_name}_{upscale_factor}_{name}.npy")
        else:
            print("calculating acc")
            if os.path.exists(PATH+f"{data_name}_{upscale_factor}_{name}_pred_bicubic_0.0.npy") == False:
                raise ValueError(("File not found; Hint: Please run the eval.py first with --save_prediction True "))

            pred = np.load(PATH+f"{data_name}_{upscale_factor}_{name}_pred_bicubic_0.0.npy")
            hr = np.load(PATH + f"{data_name}_{upscale_factor}_hr_bicubic_0.0.npy")
            acc = calculate_acc(pred[:120,0:1],hr[:120,0:1])
            np.save(f"acc_{data_name}_{upscale_factor}_{name}.npy",acc)
        ax.plot(np.arange(0,acc.shape[0],7),acc[::7],label=model_name_list[jj],marker='o',markersize=2,linewidth=0.7,alpha=0.7)
        jj+=1
    ax.set_ylabel("ACC",fontsize=fsize)    
    ax.set_xlabel("Time (Days)",fontsize=fsize)
    ax.tick_params(axis='x', labelsize=labelsize,)
    ax.tick_params(axis='y', labelsize=labelsize)
    ax.set_title(f"Weather Data",fontsize=fsize)
    from matplotlib.ticker import MaxNLocator
    ax.yaxis.set_major_locator(MaxNLocator(nbins=2))
    # Adjust layout to make space for the legend below the plot
    # plt.subplots_adjust(bottom=0.1)
    plt.legend(*ax.get_legend_handles_labels(), loc='lower center',ncol=2,fontsize=labelsize-1,bbox_to_anchor=(0.5, -0.42))
    fig.savefig(f"acc_{data_name}_{upscale_factor}.png",dpi=300,bbox_inches='tight',transparent=True)
    return None

# from https://arxiv.org/pdf/2002.00469.pdf Appendix A
def calculate_acc(pred,hr):
    acc = np.sum((hr - hr.mean(axis=0))*(pred - pred.mean(axis=0)),axis=(1,2,3))/np.sqrt(np.sum((pred - pred.mean(axis=0))**2,axis=(1,2,3))*np.sum((hr - hr.mean(axis=0))**2,axis=(1,2,3)))
    if len(acc.shape) > 1:
        raise ValueError("acc should be a 1D array")
    return acc

if __name__ == "__main__":
    plot_acc(upscale_factor=8)
    

