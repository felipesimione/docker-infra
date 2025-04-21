# filepath: /Users/felipesimione/Documents/jornada_dados_projetos/docker_infra/Dockerfile
FROM python:3.13-slim

# Instalar dependências
RUN pip install streamlit

# Copiar o código da aplicação
COPY app.py /app/app.py

# Definir o diretório de trabalho
WORKDIR /app

# Expor a porta usada pelo Streamlit
EXPOSE 8501

# Comando para rodar o Streamlit
CMD ["streamlit", "run", "app.py"]