# SSD-Object-Detection-TFOD-Pipeline
This repository uses Tensorflow Object Detection(TFOD) API to implement a training pipeline for multiple object detection applications based on Single Shot Multibox Detector(SSD). 

Put some images here!

The entire training and inference process takes place in a docker container and the Dockerfile is provided to pull and build. The Dockerfile is based on TFOD docker image. The main branch of this repository uses Tensorflow 1.x. It is recommended to use a GPW-Powered machine for training process. 
An SSD model is able to operate in real-time(up to 59 fps on 300x300pxl input images).  

## Setup
### Docker installation
Explain the installation process of docker on ubuntu 18/20.04

### Pull the docker image

### Build the docker image
Explain the docker file and building process.

### RUN the docker container
explain the running process. Test the GPU process and tensorflow.



## Preparing the dataset(records and classes)
### Annotation
Explain how to annotate images using labelImg application.

### Generating records and label files



## Pre-trained Model and Network Configuration
### Pre-trained model

### Network Configuration

## Training

## Inference

## Acknowledgment

## Future Developments