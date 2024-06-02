# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        gcc \
        libc6-dev \
        git \
        && rm -rf /var/lib/apt/lists/*

# Install PDM
RUN pip install pdm

# Copy the pdm configuration files into the container + readme
COPY pdm.lock pyproject.toml /usr/src/app/
COPY README.md /usr/src/app/

# Install dependencies from the lock file
RUN pdm sync -r

# Activate the virtual environment
RUN echo "source $(pdm info --env --no-site-packages)/bin/activate" > ~/.bashrc

# Copy the rest of your application's code
COPY . /usr/src/app

# Set the default command to execute
CMD ["pdm", "run", "dbt", "run"]
