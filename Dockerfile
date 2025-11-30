# Start from the official Python image recommended for development
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the dependency file first to optimize Docker caching
COPY requirements.txt .

# Install the Python dependencies (Flask, etc.)
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the rest of your application code into the container
# This includes agent_app.py and manifest.yaml
COPY . .

# Expose the port that the Flask app will listen on (default is 5000)
EXPOSE 5000

# Define the command to run when the container starts
# This command starts your Flask web server
CMD ["python3", "agent_app.py"]
