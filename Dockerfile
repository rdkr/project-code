# Install python as a parent image 
FROM python:3.7

# Set working directory to app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# TODO: potentially remove 
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run main.py (flask app) when the container launches
CMD ["python", "main.py"]
