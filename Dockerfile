# Use official Python 3.11 image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy the Python script
COPY app.py .

# Run the app
CMD ["python", "app.py"]
