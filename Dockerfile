# Use an official Python image with Jupyter
FROM python:3.11

# Set working directory inside the container
WORKDIR /app

# Install Jupyter Notebook
RUN pip install --no-cache-dir jupyterlab

# Install any additional dependencies (add more if needed)
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose Jupyter's default port
EXPOSE 8888

# Command to run Jupyter Notebook
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
