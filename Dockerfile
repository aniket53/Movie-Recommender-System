FROM python:3.9
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN git lfs pull -I similarity.pkl
EXPOSE $PORT
CMD ["sh","-c","streamlit run --server.port $PORT app.py"]

# FROM python:3.9
# EXPOSE 8501
# WORKDIR /app
# COPY requirements.txt ./requirements.txt
# RUN pip install -r requirements.txt
# COPY . .
# CMD streamlit run app.py