# Use official Python 3.12 slim image
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy your app file into the container
COPY app.py .

# Install Flask
RUN pip install --no-cache-dir flask

# Expose port 5000
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]

