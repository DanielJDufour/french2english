sudo apt-get install -y python-pip python-dev
#sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.6.0-cp27-none-linux_x86_64.whl
sudo git clone --recurse-submodules https://github.com/tensorflow/tensorflow.git ~/tensorflow

# install packages required by bazel
sudo apt-get install -y openjdk-8-jdk openjdk-8-source pkg-config zip g++ zlib1g-dev unzip

# download bazel installer
sudo wget https://github.com/bazelbuild/bazel/releases/download/0.1.2/bazel_0.1.2-linux-x86_64.deb -O /tmp/bazel_0.1.2-linux-x86_64.deb

sudo dpkg -i /tmp/bazel_0.1.2-linux-x86_64.deb
sudo apt-get install -f

# install other dependencies
sudo apt-get install -y python-numpy swig python-dev

# configure tensor flow
cd ~/tensorflow && sudo ./configure

# download french to english corpus
sudo wget http://www.statmt.org/europarl/v7/fr-en.tgz /tmp/fr-en.tgz
