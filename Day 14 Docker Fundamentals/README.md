# Docker Fundamentals

## 1. Objective
To understand Docker fundamentals, install Docker Desktop, verify the Docker Engine, and practice basic Docker commands.

## 2. Tools Used
- Docker Desktop
- Docker CLI
- Visual Studio Code
- PowerShell Terminal
- Windows OS

## 3. Concepts Learned

### Docker Image
A Docker image is a template used to create containers. In this practical, the `hello-world` image was downloaded from Docker Hub.

### Docker Container
A Docker container is an instance created from a Docker image. It can run an application and stop after completing its task.

## 4. Practical Commands

| Command | Purpose |
|---|---|
| `docker --version` | Checks the Docker CLI version |
| `docker info` | Displays Docker system information |
| `docker info --format '{{.ServerVersion}}'` | Displays the Docker Server version |
| `docker run hello-world` | Downloads and runs the Hello World test image |
| `docker images` | Lists available Docker images |
| `docker ps -a` | Lists all containers, including stopped containers |
| `docker run --name syntova-test hello-world` | Creates and runs a container with a custom name |

## 5. Practical Results
- Installed Docker Desktop successfully.
- Verified the Docker CLI version.
- Verified that the Docker Engine was running.
- Downloaded the `hello-world` image.
- Ran the Hello World container successfully.
- Listed downloaded images and created containers.
- Created a container named `syntova-test`.
- Observed the container status `Exited (0)`, indicating successful completion.

## 6. Screenshots / Evidence
- `Docker_Hello_World_Container.png`
- `Docker_Images_List.png`
- `Docker_Containers_List.png`
- `Docker_Named_Container.png`
- `Docker_Named_Container_List.png`
- `Docker_Inspect_Container_Status.png`
- `Docker_Container_Logs.png`
- `Docker_Python_Image_Pull.png`
- `Docker_Custom_Image_Run.png`
- `Docker_Custom_Images_List.png`
- `Docker_Custom_Container_List.png`

## 7. Conclusion
Successfully completed basic Docker installation and verification. Practiced downloading a Docker image, running containers, assigning a custom container name, and inspecting images and containers.

## 8. Dockerfile Practical

### Objective
To create a custom Docker image and run a Python program inside a Docker container.

### Files Created
- `dockerfile-practice/Dockerfile`
- `dockerfile-practice/app.py`

### Dockerfile Instructions
- `FROM python:3.12-slim` - Uses a lightweight Python base image.
- `WORKDIR /app` - Sets the working directory inside the container.
- `COPY app.py .` - Copies the Python program into the container.
- `CMD ["python", "app.py"]` - Runs the Python program when the container starts.

### Commands Executed
- `docker pull python:3.12-slim`
- `docker build -t syntova-python-app .`
- `docker run --name syntova-python-container syntova-python-app`
- `docker images`
- `docker ps -a`

### Result
Successfully built the custom image `syntova-python-app` and ran the Python program inside the container. The output was:

- `Hello from Syntova Docker!`
- `My first custom Docker image is working.`

