python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model EDSR --upscale_factor 8 --model_path results/era5_8/model_EDSR_era5_8_0.0001_bicubic_5544.pt;
python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model SwinIR --upscale_factor 8 --model_path results/era5_8/model_SwinIR_era5_8_0.0001_bicubic_0.0_5544.pt;
python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model subpixelCNN --upscale_factor 8 --model_path results/era5_8/model_subpixelCNN_era5_8_0.001_bicubic_0.0_5544.pt;
python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model SRCNN --upscale_factor 8 --model_path results/era5_8/model_SRCNN_era5_8_0.001_bicubic_0.0_5544_6993.pt;

python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model EDSR --upscale_factor 16 --model_path results/era5_16/model_EDSR_era5_16_0.0001_bicubic_5544.pt;
python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model SwinIR --upscale_factor 16 --model_path results/era5_16/model_SwinIR_era5_16_0.0001_bicubic_0.0_5544.pt;
python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model subpixelCNN --upscale_factor 16 --model_path results/era5_16/model_subpixelCNN_era5_16_0.001_bicubic_0.0_5544.pt;
python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model SRCNN --upscale_factor 16 --model_path results/era5_16/model_SRCNN_era5_16_0.001_bicubic_0.0_5544.pt;

python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model Bicubic --upscale_factor 16; 
python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model Bicubic --upscale_factor 8; 
python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model WDSR --upscale_factor 16 --model_path results/era5_16/model_WDSR_era5_16_0.0001_bicubic_5544.pt;
python eval.py --data_name era5 --data_path /pscratch/sd/j/junyi012/superbench_v2/era5 --in_channels 3 --model WDSR --upscale_factor 8 --model_path results/model_WDSR_era5_8_0.0005_bicubic_0.0_5544_6213.pt;
