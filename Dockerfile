# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy requirements.txt (create it next)
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 8081

# Command to run the application
CMD ["python", "app.py"]
