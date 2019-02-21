#! /usr/bin/env sh

# Install dependencies and tools for compiling cucumber-cpp
apt-get update
apt-get install -y build-essential 
apt-get install -y cmake
apt-get install -y libboost-all-dev
apt-get install -y ruby-dev
gem install bundler
apt-get install -y wget

# Download, compile and install cucumber-cpp
setenv MAKEFLAGS '-j 8' # use 8 parallel processess for compilation
cd /vagrant
wget https://github.com/cucumber/cucumber-cpp/archive/v0.5.tar.gz 
tar -zxvf *.tar.gz
mv cucumber-cpp-0.5 cucumber-cpp
cd /vagrant/cucumber-cpp
bundle install
cmake -E make_directory build
cmake -E chdir build cmake -DCUKE_ENABLE_EXAMPLES=on -DCMAKE_INSTALL_PREFIX=${prefix} ..
cmake --build build
cmake --build build --target test
cmake --build build --target install
