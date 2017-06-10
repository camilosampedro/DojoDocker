# Run a minideb instance
sudo docker run --rm -it bitnami/minideb:latest

# Update system
apt-get update

# Install apache2
apt-get install apache2

# Build Dockerfile
sudo docker build -t dockerexample:0.1 .
sudo docker run dockerexample:0.1
