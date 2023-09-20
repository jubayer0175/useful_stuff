## on-chip debugging

### clocks in the debug core: 
If the clocks are driven from MMCM/PLL, ensure that the MMCM/PLL LOCKED signal is high prior to any debug core measurements. If the clock is connected to the Debug Hub or any of the debug cores and the MMCM/PLL LOCKED signal transitions to a 0 in the middle of debug operations, the clock can have significant jitter that might result in unpredictable behavior of the debug logic.

- When using clock synthesis directly instantiating MMCM modules have a peculiar frequence setting. VFCO must between 600MHz to 1200MHz. To achive this CLKFBOUT_MULT_F and DIVCLK_DIVIDE must follow CLKFBOUT_MULT_F*1000/(DIVCLK_DIVIDE*CLKIN1_PERIOD) and the output must be within this range. With 10ns period and divclk_divide =1, Mult cannot be outside of 6 to 12. Use CLKOUT0_DIVIDE_F to further tune the clock.[https://docs.xilinx.com/v/u/en-US/ug472_7Series_Clocking] page-72

- sudo fpga-clear-local-image -S 0
- You will need an FPGA AMI from amazon or Xilinx the offline one will cost $3.5K f**k my life. Ok for now I am going to use online one and see if it works.
- Developmenet AMI does not need to run in the F1 instance. AFi can be developed in a free  machines in amazon.
- Install aws cli if you want to (recomended) "curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
&& unzip awscliv2.zip \
&& sudo ./aws/install"
- Xilinx docs seems to be nicer than aws docs: https://github.com/Xilinx/SDAccel-Tutorials/tree/master/docs/aws-getting-started/PREREQUISITES 
- Double word is 4 byte in AWS CL and SH :p

-- Now dive in this documents if you have time. I am going to ssh into the machines for now.
-- Python needs update in the FPGA AMI. 
cd $AWS_FPGA_REPO_DIR
cd $HDK_DIR/cl/examples/cl_hello_world
export CL_DIR=$(pwd)
aws s3 ls 
aws ec2 create-fpga-image --region us-east-1 --input Bucket=forte-research,Key=hello_world/23_06_26-201649.Developer_CL.tar --logs-storage-location Bucket=forte-research,Key=my_logs

-- List s3 files by date: ```aws s3 ls s3://my-bucket/ --recursive --human-readable | sort -k 1,2```
-- Describe afi image: aws ec2 describe-fpga-images --fpga-image-ids afi-09e0f593c5933a119







--
-- Supre like this by swapped subroutine: 
uint32_t byte_swap(uint32_t value) {
    uint32_t swapped_value = 0;
    int b;
    for (b = 0; b < 4; b++) {
        swapped_value |= ((value >> (b * 8)) & 0xff) << (8 * (3-b));
    }
    return swapped_value;
}

-- disable encrypt.tcl file in the build directory this will allow you to look at bugs in the design during synthesis. Also, if new file added, you must add the file in the encrypt.tcl otherwise, you will get build error as the files will not be found during the runs.

## AWS s3 commands
- Help: https://docs.aws.amazon.com/cli/latest/userguide/cli-services-s3-commands.html
- Add this line in the synth_cl_hello_world.tcl   ```read_verilog -sv [glob $ENC_SRC_DIR/*.v]``` or you verilog file will not be included in the build and synthesis will fail.


### Simulation
-- looks like the writing on the ocl bus at clk_extra_b0 leads to a hang and Simulation stops at 100us. Down grade the freq for simulation.
-- For some reasons the compiler uses old parameters even when changed in the design files. Please check the logs to make sure correct pramaters were used during enumeration of the HDL files. 


## MMCM placement and routing problem in aws F1 instance: 
The placement is failing beacuse for some reason, the placement is being suboptimal. 