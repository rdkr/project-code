# Install python as a parent image 
FROM python:3.7

# Set working directory to app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt

RUN pip install -r requirements.txt

# Specify the container to listen on port 80 within the local Docker network
EXPOSE 80

ENTRYPOINT [ "python" ]

# Run main.py (flask app) when the container launches we also pass in the
# "Docker" argument which is used by the flask app.
CMD ["main.py", "Docker"]
