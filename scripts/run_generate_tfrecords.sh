# Copyright: This script is taken from <https://tensorflow-object-detection-api-tutorial.readthedocs.io/en/latest/training.html>

# PROJECT_NAME=<Paste your project title here>
# Create train data:
python generate_tfrecord.py -x /home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/dataset/${PROJECT_NAME}/annotations/train -l /home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/dataset/${PROJECT_NAME}/records/classes.pbtxt -o /home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/dataset/${PROJECT_NAME}/records/train.record

# Create test data:
python generate_tfrecord.py -x [/home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/dataset/${PROJECT_NAME}/annotations]/test -l /home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/dataset/${PROJECT_NAME}/records/classes.pbtxt -o /home/tensorflow/SSD-Object-Detection-TFOD-Training-Pipeline/dataset/${PROJECT_NAME}/records/test.record
