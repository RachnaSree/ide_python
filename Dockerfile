# Step 1: Use official lightweight Python image
FROM python:3.11-slim

# Step 2: Set working directory inside the container
WORKDIR /app

# Step 3: Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy the rest of the project files into container
COPY . .

# Step 5: Expose port 5000 
EXPOSE 5000

# Step 6: Run the Flask app
CMD ["python", "app.py"]
