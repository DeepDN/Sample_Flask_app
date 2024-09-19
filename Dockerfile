#FROM ubuntu/python:3.12-24.04_stable

#WORKDIR /app

#COPY . .

#RUN pip install -r flask

#CMD ["python","app.py"]


# Use an official Python runtime as a parent image
FROM python:3.9-slim AS backend

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir flask

FROM backend

COPY --from=backend /app /app/.


# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable for Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the Flask app
CMD ["flask", "run"]

