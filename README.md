# cucumber-cpp-vagrant-build
A vagrant instance that downloads and compiles [cucumber-cpp](https://github.com/cucumber/cucumber-cpp).

## Rationale

This project appeared from the need of a replicable way of compiling cucumber-cpp. Initially created for [CppEurope 2019](https://cppeurope.com) by Alexandru Bolboaca and verified with Thomas Sundberg. 

If you find it useful, please let us know: Twitter @alexboly or through github.

## How to Use

First, install [vagrant](https://www.vagrantup.com/). Then simply run `vagrant up`. 

If for some reason you want to try again, run `clean` and try again.

## How It Works

Vagrant configures a virtual machine running Ubuntu Bionic 64 bits, with 4 GB of RAM. It then runs the provisioning script, `provision.sh`. This script installs all the necessary tools and dependencies for cucumber-cpp, and proceeds with downloading and compiling the library. The compiled binary is then installed using the scripts offered by the library, and can also be retrieved from the cucumber-cpp/build folder.

## Limitations & Other Details

The provisioning script requires internet access. It downloads the release 0.5, latest at the time when this script was written, from its github repository. To compile, it uses the latest available build tools and boost headers at the time of running.
