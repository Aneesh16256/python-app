# Python base image (change version if needed)
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy requirements first (better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Run the app (change if your entrypoint differs)
CMD ["python", "app.py"]  # Or "gunicorn", "uvicorn", etc.