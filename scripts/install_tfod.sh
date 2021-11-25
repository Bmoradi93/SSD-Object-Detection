#!/bin/sh

cd /home/tensorflow/models/research/

# install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --force-reinstall

# Compile protos.
protoc object_detection/protos/*.proto --python_out=.

# Install TensorFlow Object Detection API.
cp object_detection/packages/tf1/setup.py .
python3 -m pip install --use-feature=2020-resolver .

pip install labelImg

apt-get install '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev

# Test the installation.
python3 object_detection/builders/model_builder_tf1_test.py
