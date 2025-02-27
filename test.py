from llama_index.llms.ollama import Ollama
from llama_index.core import Settings

llm = Ollama(model="llama3.2:1b", request_timeout=120.0)

Settings.llm = llm

from llama_index.core import PromptTemplate

template = """Context information is below:
              ---------------------
              {context_str}
              ---------------------
              Given the context information above I want you to think
              step by step to answer the query in a crisp manner,
              incase you don't know the answer say 'I don't know!'
            
              Query: {query_str}
        
              Answer:"""

qa_prompt_tmpl = PromptTemplate(template)