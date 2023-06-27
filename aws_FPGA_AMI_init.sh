# this i will save some clicking and searching--amazon FPGA AMI

AWS_FPGA_REPO_DIR=/home/centos/src/project_data/aws-fpga
sudo yum git
git clone https://github.com/aws/aws-fpga.git $AWS_FPGA_REPO_DIR
cd $AWS_FPGA_REPO_DIR
source hdk_setup.sh
