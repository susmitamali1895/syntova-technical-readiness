
# System Health Checker

## 1. Project Objective

The System Health Checker is a Python application that displays basic system information and resource usage. It can run locally on a computer or inside a Docker container.

## 2. Features

- Displays operating system information
- Displays computer hostname and Python version
- Measures CPU usage
- Displays total, used, and available RAM
- Displays total, used, and free disk space

## 3. Technologies Used

- Python
- psutil
- Docker
- Visual Studio Code
- PowerShell

## 4. Project Structure

```text
system-health-checker/
├── system_health_checker.py
├── requirements.txt
├── Dockerfile
├── README.md
└── screenshots/
```

## 5. Dependencies

The project uses the `psutil` Python library to collect CPU and memory information.

Install the dependency using:

```bash
python -m pip install -r requirements.txt
```

## 6. Run Locally

Run the application from the project folder:

```bash
python system_health_checker.py
```

## 7. Build the Docker Image

```bash
docker build -t syntova-system-health-checker .
```

## 8. Run the Docker Container

```bash
docker run --name syntova-health-checker syntova-system-health-checker
```

## 9. Verify the Container

```bash
docker ps -a
```

The application prints a system health report and exits after completing the check. An exit code of 0 indicates successful completion.

## 10. Practical Evidence

Screenshots captured during testing:

- Day15_System_Health_Checker_Output.png
- Day15_System_Health_Checker_CPU_RAM_Output.png
- Day15_Docker_Engine_Verification.png
- Day15_System_Health_Checker_Docker_Build.png
- Day15_System_Health_Checker_Docker_Output.png
- Day15_Docker_Container_Status.png
- Day15_Docker_Images_List.png

## 11. Conclusion

The application was tested locally and inside a Docker container. It demonstrates basic Python system monitoring, dependency management, Docker image building, container execution, and project documentation.
