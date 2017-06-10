FROM ubuntu

WORKDIR /web/
ADD ./index.html /web/
ADD ./normalize.css /web/
ADD ./sakura.png /web/

RUN apt-get update && apt-get install -y python3 curl
RUN curl -o sakura.css https://raw.githubusercontent.com/oxalorg/sakura/master/css/sakura.css
CMD ["python3", "-m", "http.server", "3000"]

# Selects a base image for building this docker image
# ---------------------------------------------------------
# Usage: FROM username/image_name:tag
# ---------------------------------------------------------
# FROM python:3.5

# Commands used to run when the docker image is being built
# ---------------------------------------------------------
# Usage: RUN command
# ---------------------------------------------------------
# RUN pip install Flask==0.11.1
# RUN useradd -ms /bin/bash admin

# Sets the user that will be running on the build and run phases.
# ---------------------------------------------------------
# Usage: USER UID/username
# ---------------------------------------------------------
# USER admin

# Enables access from the container to the specified folder
# ---------------------------------------------------------
# Usage: WORKDIR folder
# ---------------------------------------------------------
# WORKDIR /app

# Copies a folder to the container, instead of mounting it
# ---------------------------------------------------------
# Usage: COPY sourceFolder /absolute/guest/path
# ---------------------------------------------------------
# COPY app /app

# Commands run after a container creation.
# It overrides the other CMD commands on the build stack.
# Usage: CMD ["application", "argument", "argument", ...]
# --------------------------------------------------------
# CMD ["python", "app.py"]

####################
## OTHER COMMANDS ##
####################

# Add a local folder to a container folder.
# The path in host can be replaced by an URL, so it will be downloaded
# before copying it to the guest.
# --------------------------------------------------------
# Usage: ADD ./path/in/host /path/in/guest

# Exposes a specific port to the guest
# Usage: EXPOSE port

# Sets environment variables (It can be several), which are key-value pairs
# --------------------------------------------------------
# Usage: ENV key value

# Commands run after a container creation.
# It can be used alongside CMD, with CMD providing the arguments.
# --------------------------------------------------------
# Usage: ENTRYPOINT application "argument", "argument"

# Maintainer
# Usage: MAINTAINER name
