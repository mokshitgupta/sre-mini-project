# Use the official Python slim image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy everything from the host to /app inside the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose custom Flask port (e.g., 5005)
EXPOSE 5005

# Run the Flask app
CMD ["python", "app.py"]

