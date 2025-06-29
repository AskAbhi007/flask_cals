# Use Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy app code and environment
COPY flask_calculator/app/ /app/
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables in container
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose port
EXPOSE 5000

# Run app
CMD ["flask", "run"]
