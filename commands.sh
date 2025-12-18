# Firts Docker Compose Up
docker-compose up -d

# Test Minikube
minikube status

# If not running, start Minikube
minikube start

# Test Minikube Dashboard
minikube dashboard

# Get Deployments
kubectl get deployments

# Get Pods
kubectl get pods

# Get Services
kubectl get services

# Get Nodes
kubectl get nodes


# ------------------------------------------------------------

# Images Build
docker build -t lironefitoussi/k8s-basics-auth ./auth-api
docker build -t lironefitoussi/k8s-basics-users ./users-api
docker build -t lironefitoussi/k8s-basics-tasks ./tasks-api

# Images Push
docker push lironefitoussi/k8s-basics-auth
docker push lironefitoussi/k8s-basics-users
docker push lironefitoussi/k8s-basics-tasks

# Launch Deployments
kubectl apply -f kubernetes/auth-deployment.yml
kubectl apply -f kubernetes/users-deployment.yml
kubectl apply -f kubernetes/tasks-deployment.yml

# Launch Services
kubectl apply -f kubernetes/auth-service.yml
kubectl apply -f kubernetes/users-service.yml
kubectl apply -f kubernetes/tasks-service.yml
