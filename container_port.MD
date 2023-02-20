need now to focus in container port to deploy app on minikube k8s
so we have a container running on mode static server nginx | 80 by default - it must ;
# important article about deploying mern stack
https://blog.carbonteq.com/mern-stack-with-kubernetes/

# FROM node:14-slim as builder
# WORKDIR /app
# COPY ./package.json ./
# COPY ./yarn.lock ./
# RUN yarn install
# COPY . .
# RUN yarn run build

# FROM nginx
# EXPOSE 3000
# COPY ./default.conf /etc/nginx/conf.d/default.conf
# COPY --from=builder /app/build /usr/share/nginx/html

# CLIENT ENV
REACT_APP_PROXY_HOST=http://api:4000/
# SERVER ENV
PORT=4000
MONGO_URI= mongodb+srv://admin:pass123@mydatabase.e8dfosi.mongodb.net/workouts7?retryWrites=true&w=majority
SECRET=ninjadojoshifuyoshimarioluigipeachbowser

# command minikube
minikube ip -p minikube
minikube profile
kubectl api-resources | grep Ingress
kubectl get po -n ingress-nginx

# vim 
i insert
esc 
:wq