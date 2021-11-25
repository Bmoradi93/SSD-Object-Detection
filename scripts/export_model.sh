#!/bin/sh

# PROJECT_NAME=<Paste your project title here>

PIPELINE_CONFIG_PATH=/home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/network_configuration/${PROJECT_NAME}/ssd_hypes.config

TRAINED_CHECKPOINT_PREFIX=/home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/workspace/${PROJECT_NAME}/training/model.ckpt-50000

OUTPUT_DIRECTORY=/home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/workspace/${PROJECT_NAME}/exported_model

python /home/tensorflow/models/research/object_detection/export_inference_graph.py --pipeline_config_path=${PIPELINE_CONFIG_PATH}  --trained_checkpoint_prefix=${TRAINED_CHECKPOINT_PREFIX}  --output_directory=${OUTPUT_DIRECTORY}