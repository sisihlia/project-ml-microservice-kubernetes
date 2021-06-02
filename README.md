# project-ml-microservice-kubernetes


![image](https://user-images.githubusercontent.com/8087964/120562960-cabaff80-c407-11eb-81cd-8178cf015695.png)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
   1. python3 -m venv ~/.devops
   2. source ~/.devops/bin/activate

* Run `make install` to install the necessary dependencies
   3. make install
   4. make lint
   5
### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
    curl -fsSL https://get.docker.com -o get-docker.sh
    bash get-docker.sh
    
* Setup and Configure Kubernetes locally
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
    sudo dpkg -i minikube_latest_amd64.deb
    minikube start --extra-config=kubeadm.ignore-preflight-errors=NumCPU --force --cpus 1 
    
* Create Flask app in Container
    minikube kubectl run projectml -- --image=sisihliay/projectml:v1 --port=80
    minikube kubectl port-forward projectml 8000:80
    
* Run via kubectl
    minikube kubectl get pods




