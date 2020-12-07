echo "Installing the BionicSoftHand 2.0 python libraries"
echo "Creating the directories under /home/" + $USER + "/dev/phand"

# Create the directory
mkdir -p /home/$USER/dev/phand/python_libs

# Change directory
cd /home/$USER/dev/phand/python_libs

# Clone the relevant python library repositories
echo "Cloning the DHCP libraries"
git clone https://github.com/Schwimo/bionic-dhcp
echo "Cloning the PID controller"
git clone https://github.com/Schwimo/bionic-pid-control
echo "Cloning the BionicMessageTools"
git clone https://github.com/Schwimo/bionic-message-tools
echo "Cloning the BionicSoftHand python libraries"
git clone https://github.com/Schwimo/phand-python-libs

# install the python libraries
echo "Installing the DHCP libraries"
pip3 install --editable /home/$USER/dev/phand/python_libs/bionic-dhcp
echo "Installing the PID controller"
pip3 install --editable /home/$USER/dev/phand/python_libs/bionic-pid-control
echo "Installing the BionicMessageTools"
pip3 install --editable /home/$USER/dev/phand/python_libs/bionic-message-tools
echo "Installing the BionicSoftHand python libraries"
pip3 install --editable /home/$USER/dev/phand/python_libs/phand-python-libs

bash

echo "BionicSoftHand 2.0 python libraries successfully installed."