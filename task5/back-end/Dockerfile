# Based on the latest ubuntu
FROM ubuntu:latest

# Update APT and install Python3 and pip3
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python3 python3-pip python3-venv

# Create and activate virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Use pip3 to install flask-cors
RUN pip3 install Flask flask-cors

# Set working directory
WORKDIR /app

# Copy Flask application to the container
COPY api.py /app/

# Once built, run default command when starting the container
CMD ["python3", "api.py"]
