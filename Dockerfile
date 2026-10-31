# Use Python as the base image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy application code into the container
COPY app.py .

# Run the Python application
CMD ["python", "-c", "from app import add; print(add(10, 20))"]
