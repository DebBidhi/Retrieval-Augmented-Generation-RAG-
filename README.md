# Retrieval-Augmented Generation (RAG) System

## Project Overview
This project demonstrates a Retrieval-Augmented Generation (RAG) system that utilizes Qdrant and Llama Index to enhance document retrieval and question answering. By integrating vector stores with advanced language models, it ensures efficient and accurate information retrieval.

## Installation Guide
1. **Clone the Repository:**
   To get started, clone the repository to your local machine:
   ```bash
   git clone https://github.com/DebBidhi/Retrieval-Augmented-Generation-RAG-
   cd Retrieval-Augmented-Generation-RAG-
   ```
2. **Set Up and Launch Docker Services:**
   The Dockerfile is pre-configured to install all necessary Python dependencies, eliminating the need for manual installation. If you prefer to use a different open-source model, modify the Dockerfile during the Ollama installation process. Also, update the notebook to reflect the model change:
   ```python
   llm = Ollama(model="your-model-name", request_timeout=120.0)
   ```
   Next, execute:
   ```bash
   docker-compose up
   ```
   This will install Ollama and the open-source model, which may take some time depending on your internet speed.

## Usage Instructions
- Run the Jupyter notebooks within the Docker container to explore the RAG system's capabilities.
- Use `notebook.ipynb` to set up the vector store and index your documents.
- Access the Qdrant vector database at `http://localhost:6333` to view and manage your vector data.
- Open `notebook.ipynb` in your browser at `http://localhost:8888` to interact with the Jupyter notebook interface seamlessly.
