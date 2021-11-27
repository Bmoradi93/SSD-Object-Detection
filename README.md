# SSD-Object-Detection-TFOD-Pipeline
This repository uses Tensorflow Object Detection(TFOD) to implement a training pipeline for multiple object detection applications based on Single Shot Multibox Detector(SSD). The pipeline is trained and tested on a regular vehicle dataset. 

![Selection_104](https://user-images.githubusercontent.com/47978272/143666316-8d11f028-fbb6-446f-9668-32f39d5b8acb.png)

![Selection_107](https://user-images.githubusercontent.com/47978272/143666457-299d1921-3508-411a-9d69-fbe1c1b6c6d0.png)


The entire training and inference process takes place in a docker container and the Dockerfile is provided to pull and build. The Dockerfile is based on TFOD docker image. The main branch of this repository uses Tensorflow 1.x. It is recommended to use a GPU-Powered machine for training process. 
An SSD model is able to operate in real-time(up to 59 fps on 300x300pxl input images).  

## Setup
### Docker Engine installation
Please following this [instructions](https://docs.docker.com/engine/install/ubuntu/) to install docker engine on your ubuntu 18/20.04 machine.
It is highly recommended to use an NVIDIA-GPU on your machine. In order to use your GPU in your docker image, you must install [nvidia-docker](https://cnvrg.io/how-to-setup-docker-and-nvidia-docker-2-0-on-ubuntu-18-04/). You only need to do Step #2. 

### Pull the docker image
A basic docker container is built and pushed into docker hub. Once you have both docker engine and nvidia-docker installed on your ubuntu machine, open a terminal and pull the docker image.
```
docker pull behnammoradi026/deep_learning:tfod
```
Note: CUDA is already installed on this docker image.


### RUN the docker container
Once the docker image is pulled, run the following script to run and enter the container:

```
# Navigate to the repository's main directory
cd SSD-Object-Detection-TFOD-Training-Pipeline

# Run and enter the docker container
source scripts/run_docker.sh

```
### Install TFOF dependencies and annotation tools
In order to install essential dependencies for annotation and testing tensorflow object detection (TFOD) API, please run the following script. 
Note: Make sure your terminal is inside docker container!

```

```
If your TFOD is properly installed, then you should see the following results on your terminal:

```
[       OK ] ModelBuilderTF1Test.test_invalid_model_config_proto
[ RUN      ] ModelBuilderTF1Test.test_invalid_second_stage_batch_size
[       OK ] ModelBuilderTF1Test.test_invalid_second_stage_batch_size
[ RUN      ] ModelBuilderTF1Test.test_session
[  SKIPPED ] ModelBuilderTF1Test.test_session
[ RUN      ] ModelBuilderTF1Test.test_unknown_faster_rcnn_feature_extractor
[       OK ] ModelBuilderTF1Test.test_unknown_faster_rcnn_feature_extractor
[ RUN      ] ModelBuilderTF1Test.test_unknown_meta_architecture
[       OK ] ModelBuilderTF1Test.test_unknown_meta_architecture
[ RUN      ] ModelBuilderTF1Test.test_unknown_ssd_feature_extractor
[       OK ] ModelBuilderTF1Test.test_unknown_ssd_feature_extractor
----------------------------------------------------------------------
Ran 21 tests in 0.135s

OK (skipped=1)
```


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
