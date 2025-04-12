# Retrieval-Augmented Generation (RAG) System

## Project Overview
This project demonstrates a Retrieval-Augmented Generation (RAG) system that utilizes Qdrant and Llama Index to enhance document retrieval and improve question answering. By integrating vector stores with advanced language models, it ensures efficient and accurate information retrieval.

## Installation Guide
1. **Clone the Repository:**
   Start by cloning the repository to your local machine:
   ```bash
   git clone https://github.com/DebBidhi/Retrieval-Augmented-Generation-RAG-
   cd Retrieval-Augmented-Generation-RAG-
   ```

2. **Install Docker:**
   Ensure Docker is installed on your system. You can download it from [Docker's official website](https://www.docker.com/get-started).

3. **Install Ollama:**
   Make sure Ollama is installed on your system to manually install the open-source model. You can find installation instructions on [Ollama's website](https://ollama.com).

4. **Install the Open-Source Model:**
   Use Ollama to install your preferred open-source model:
   ```bash
   ollama run deepseek-r1:7b
   ```

5. **Launch Docker Services:**
   Use Docker Compose to set up the local vector store (Qdrant) and other services:
   ```bash
   docker-compose up
   ```

## Usage Instructions
- Ensure Ollama is installed and the model is set up.
- Run the Jupyter notebooks within the Docker container to explore the RAG system's features.
- Use `notebook.ipynb` to configure the vector store and index your documents.
