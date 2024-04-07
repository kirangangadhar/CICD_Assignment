# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Train the model during the build phase
RUN python train.py

# Command to run the test.py script when the container is run
CMD ["python", "test.py"]