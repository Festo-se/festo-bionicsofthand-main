echo "Installing the BionicSoftHand 2.0 ROS workspace"
echo "Creating the directories under /home/" + $USER

# Create the directories
mkdir -p /home/$USER/dev/phand/phand_ws/src

# Change directory and clone the ROS repository
cd /home/$USER/dev/phand/phand_ws/src
git clone https://github.com/Festo-se/phand-ros
cd /home/$USER/dev/phand/phand_ws/

rosdep update
rosdep install --from-paths src --ignore-src -r -y

catkin build

echo "source /home/$USER/dev/phand/phand_ws/devel/setup.bash" >> ~/.bashrc

bash

echo "BionicSoftHand 2.0 ROS interface successfully installed."