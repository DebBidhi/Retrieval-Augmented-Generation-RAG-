# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install Jupyter Notebook
RUN pip install jupyter

# Install additional dependencies for Qdrant and Ollama
RUN apt-get update && \
    apt-get install -y curl && \
    curl https://ollama.com/install.sh | sh

# Install Llama 3.2:1b using Ollama // change this to any opensource model for local use
RUN ollama install llama3.2:1b

# Expose the port that Qdrant uses
EXPOSE 6333

# Run the Qdrant server and the application
CMD ["sh", "-c", "ollama serve & docker run -p 6333:6333 qdrant/qdrant & jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root"] 