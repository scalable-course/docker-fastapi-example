# Use official Python image as the base image
FROM python:3.13

# Set working directory in the container
WORKDIR /app

# Copy requirements first to leverage Docker cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Expose port 8000 to the host
EXPOSE 8000

# Command to run the app when the container starts
CMD ["fastapi", "run", "main.py"]
