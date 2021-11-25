#!/bin/sh

# PROJECT_NAME=<Paste your project title here>

MODEL=/home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/workspace/${PROJECT_NAME}/exported_model/frozen_inference_graph.pb

LABELS=/home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/dataset/${PROJECT_NAME}/records/classes.pbtxt

RAW_IMAGE=/home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/dataset/${PROJECT_NAME}/raw_images/test/left5430.jpg

NUM_CLASSES=1

python /home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/scripts/predict.py --model=${MODEL} --labels=${LABELS} --image=${RAW_IMAGE} --num-classes=${NUM_CLASSES}