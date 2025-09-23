FROM python:3.10-slim

WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy all source files
COPY . .

# Expose the port
EXPOSE 5000

# Start the app
CMD ["python", "app.py"]
