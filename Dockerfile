# Use a base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY app.py .

# Install any dependencies
RUN pip install flask

# Expose a port
EXPOSE 80

# Define the command to run when the container starts
CMD ["python", "app.py"]
