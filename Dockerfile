# Use official Python 3.12 slim image
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy your app file into the container
COPY app.py .

# Expose port 5000 (Flask default)
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]

