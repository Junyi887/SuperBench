\begin{table}[h!]
\caption{Results for nskt\_32k\_sim\_4\_v8 dataset with bicubic down-sampling.}
\label{tab:nskt_32k_sim_4_v8_bicubic}
\centering
\scalebox{0.6}{
\begin{tabular}{l|c|cccccc|cccccc|c}
\toprule
& UF & \multicolumn{6}{c}{{Interpolation Errors}} & \multicolumn{6}{c}{{Extrapolation Errors}} \\ 
\cmidrule(r){2-8} \cmidrule(r){8-14} 
Baselines & ($\times$)& MSE& MAE & RFNE  & IN & PSNR & SSIM & MSE & MAE &RFNE & IN & PSNR  & SSIM & \# par.\\ 
\midrule
Bicubic & 4 & 0.2808 & 0.2999 & 0.3348 & 3.8039 & 23.7725 & 0.7298 & 0.2895 & 0.3028 & 0.3409 & 3.8406 & 23.1843 & 0.7188 & 0.0000 M \\
FNO2D & 4 & 1.0738 & 0.8017 & 0.9003 & 0.9260 & 13.2628 & 0.2292 & 1.0561 & 0.7972 & 0.8955 & 1.0455 & 12.8643 & 0.2262 & 4.7523 M \\
FNO2D_patch & 4 & 0.1619 & 0.2537 & 0.3099 & 0.5547 & nan & 0.5947 & 0.1877 & 0.2686 & 0.3232 & 0.5753 & nan & 0.5822 & 4.7523 M \\
SRCNN & 4 & 0.1690 & 0.2375 & 0.2743 & 3.3556 & 24.9853 & 0.7657 & 0.1782 & 0.2418 & 0.2816 & 3.6442 & 24.3517 & 0.7513 & 0.0693 M \\
subpixelCNN & 4 & 0.1550 & 0.2216 & 0.2585 & 3.3386 & 25.6517 & 0.7825 & 0.1691 & 0.2290 & 0.2709 & 3.7485 & 24.8015 & 0.7685 & 0.2588 M \\
EDSR & 4 & 0.1461 & 0.2138 & 0.2516 & 3.2889 & 25.8785 & 0.7918 & 0.1667 & 0.2261 & 0.2704 & 3.7058 & 24.7698 & 0.7738 & 1.5176 M \\
WDSR & 4 & 0.1484 & 0.2142 & 0.2530 & 3.3416 & 25.8370 & 0.7912 & 0.1637 & 0.2221 & 0.2666 & 3.7196 & 24.9405 & 0.7779 & 1.3514 M \\
SwinIR & 4 & 0.1415 & 0.2074 & 0.2448 & 3.2972 & 26.2395 & 0.7990 & 0.1656 & 0.2233 & 0.2678 & 3.5782 & 24.9129 & 0.7771 & 11.9002 M \\
SwinIR_p001 & 4 & 0.1428 & 0.2079 & 0.2451 & 3.2725 & 26.2704 & 0.7990 & 0.1680 & 0.2243 & 0.2686 & 3.6186 & 24.9273 & 0.7767 & 11.9002 M \\
\bottomrule
\end{tabular}}
\end{table}

