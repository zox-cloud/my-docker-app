# Use a lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY app/ /app

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose port 80 for Flask
EXPOSE 80

# Command to run the application
CMD ["python", "app.py"]
