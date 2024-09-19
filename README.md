
# Sample Flask App

This repository contains a basic Flask application that can be built and run inside a Multistage Docker container.

## Getting Started

Follow the steps below to clone the repository, build the Docker image, and run the Flask application.

### 1. Clone the Repository

First, clone the repository to your local machine using the following command:

```bash
git clone https://github.com/DeepDN/Sample_Flask_app.git
```

### 2. Navigate to the Directory

Move into the project directory:

```bash
cd Sample_Flask_app.git
```

### 3. Build the Docker Image

Build the Docker image from the Dockerfile using this command:

```bash
docker build -t flask-app .
```

### 4. Check the Docker Image

Verify that the Docker image was built successfully:

```bash
docker images
```

### 5. Run the Docker Container

Run the Docker container, mapping port 5000 of the container to port 5000 on your local machine:

```bash
docker run -d -p 5000:5000 flask-app:latest
```

### 6. Access the Flask Application

Open your browser and visit the following URL:

```
http://localhost:5000
```

You should now be able to see the Flask app running in your browser.

---

### Commands for Running Flask App (without Docker)

If you want to run the Flask app directly without Docker, use the following command:

```bash
python app.py
```

---

This `README.md` file gives clear instructions on how to set up and run the Flask app with Docker.
