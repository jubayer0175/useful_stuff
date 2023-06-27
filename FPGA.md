## on-chip debugging

### clocks in the debug core: 
If the clocks are driven from MMCM/PLL, ensure that the MMCM/PLL LOCKED signal is high prior to any debug core measurements. If the clock is connected to the Debug Hub or any of the debug cores and the MMCM/PLL LOCKED signal transitions to a 0 in the middle of debug operations, the clock can have significant jitter that might result in unpredictable behavior of the debug logic.

- When using clock synthesis directly instantiating MMCM modules have a peculiar frequence setting. VFCO must between 600MHz to 1200MHz. To achive this CLKFBOUT_MULT_F and DIVCLK_DIVIDE must follow CLKFBOUT_MULT_F*1000/(DIVCLK_DIVIDE*CLKIN1_PERIOD) and the output must be within this range. With 10ns period and divclk_divide =1, Mult cannot be outside of 6 to 12. Use CLKOUT0_DIVIDE_F to further tune the clock.[https://docs.xilinx.com/v/u/en-US/ug472_7Series_Clocking] page-72

- sudo fpga-clear-local-image -S 0
- You will need an FPGA AMI from amazon or Xilinx the offline one will cost $3.5K fuck my life. Ok for now I am going to use online one and see if it works.
- Developmenet AMI does not need to run in the F1 instance. AFi can be developed in a free  machines in amazon.
- Install aws cli if you want to (recomended) "curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
&& unzip awscliv2.zip \
&& sudo ./aws/install"

-- Now dive in this documents if you have time. I am going to ssh into the machines for now.
-- Python needs update in the FPGA AMI. 
cd $AWS_FPGA_REPO_DIR
cd $HDK_DIR/cl/examples/cl_hello_world
export CL_DIR=$(pwd)
aws s3 ls 
aws ec2 create-fpga-image --region us-east-1 --input Bucket=forte-research,Key=hello_world/23_06_26-201649.Developer_CL.tar --logs-storage-location Bucket=forte-research,Key=my_logs


   "FpgaImageId": "afi-09e0f593c5933a119", 
    "FpgaImageGlobalId": "agfi-06211ecf7e88a11d0"

aws ec2 describe-fpga-images --fpga-image-ids afi-09e0f593c5933a119