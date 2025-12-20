# Online Medicine Application - Infrastructure

This repository contains the **infrastructure and deployment configuration** for the Online Medicine Application.  
It includes Kubernetes manifests, Helm charts, and supporting scripts for running the microservices and dependencies.

##  Prerequisites

- [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/)  
- [Kubernetes](https://kubernetes.io/) cluster (local via Docker Desktop or Minikube, or remote)
- [Helm](https://helm.sh/) v3+
- [kubectl](https://kubernetes.io/docs/reference/kubectl/)

## 1. Deploy Zookeeper & Kafka
kubectl apply -f zookeeper.yaml
kubectl apply -f kafka-cluster.yaml
kubectl apply -f schema-registry.yaml

## 2. Deploy Postgres
kubectl apply -f postgres-deployment.yml

## 3. Deploy Order Service (via Helm)
helm install order-service ./helm/order-service

## 4. Create Kafka Topics
sh create-topics.sh

##  Local Deployment (for local testing)
kubectl apply -f application-deployment-local.yml


##  Tech Stack
### Kubernetes
### Helm
### Kafka & Zookeeper
### Postgres
### Schema Registry

## 📝 Notes
### Update environment variables (DB credentials, Kafka bootstrap servers) as needed 
### in the .yml files.
### This repo only contains infrastructure configs.
### The application source code can be found here:
### https://github.com/tomrist9/online-medicine-application

