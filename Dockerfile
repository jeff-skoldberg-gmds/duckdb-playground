# Use an official Python runtime as a parent image
FROM python:3.11-slim

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

# Configure PDM to use a virtual environment
RUN pdm config python.use_venv true

# Set the PATH to include the virtual environment's bin directory
ENV PATH="/usr/src/app/.venv/bin:${PATH}"

# Copy the pdm configuration files into the container + readme
COPY pdm.lock pyproject.toml /usr/src/app/
COPY README.md /usr/src/app/

# Install the dependencies
# RUN pdm install

# Copy the rest of your application's code
COPY . /usr/src/app

# Set the default command to execute
CMD ["pdm", "run", "dbt", "run"]
