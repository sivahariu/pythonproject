# Base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . .

#Update the permissions of a start and stop scripts
RUN chmod +x stop_container.sh
RUN chmod +x start_container.sh

# Expose the port the Flask application will be listening on
EXPOSE 5000

# Set environment variables,if necessary
# ENV MY_ENV_VAR=value

# Run the Flask application
CMD ["python", "app.py"]
