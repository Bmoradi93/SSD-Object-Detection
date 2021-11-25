#!/bin/sh

# PROJECT_NAME=<Paste your project title here>

PIPELINE_CONFIG_PATH=/home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/network_configuration/${PROJECT_NAME}/ssd_hypes.config

MODEL_DIR=/home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/workspace/${PROJECT_NAME}/training

NUM_TRAIN_STEPS=50000

SAMPLE_1_OF_N_EVAL_EXAMPLES=1

python /home/tensorflow/models/research/object_detection/model_main.py --pipeline_config_path=${PIPELINE_CONFIG_PATH} --model_dir=${MODEL_DIR} --num_train_steps=${NUM_TRAIN_STEPS} --sample_1_of_n_eval_examples=${SAMPLE_1_OF_N_EVAL_EXAMPLES} --alsologtostderr
