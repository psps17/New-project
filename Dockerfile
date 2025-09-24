# Use official Python 3.12 slim image
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your Flask app code
COPY . .

# Expose the default Flask port for local development
EXPOSE 8080

# Run the Flask dev server
CMD ["python", "app.py"]
