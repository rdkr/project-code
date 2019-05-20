# Install python as a parent image 
FROM python:3.7

# Set working directory to app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Specify the container to listen within the local Docker network
EXPOSE 5000

# Run app.py (flask app) when the container launches
ENTRYPOINT ["flask"]

CMD ["run", "--host=0.0.0.0"]
