FROM python:3.13-slim
COPY . /src
WORKDIR /src
RUN pip install -r requirements.txt
EXPOSE 8501
ENTRYPOINT [ "run","streamlit","run","app/app.py","--server.port=8501","--server.address=0.0.0.0" ]
