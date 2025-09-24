# Use official Python 3.12 slim image
FROM python:3.12-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your Flask app
COPY . .

# Cloud Run will set PORT environment variable
ENV PORT=8080
EXPOSE 8080

# Run Gunicorn on the PORT Cloud Run provides
CMD ["gunicorn", "--bind", "0.0.0.0:$PORT", "app:app"]


