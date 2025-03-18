# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8501 available to the world outside the container (for Streamlit)
EXPOSE 8501

# Define the command to run your app using Streamlit
CMD ["streamlit", "run", "football_app.py"]
