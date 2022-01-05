# FROM python:stretch
FROM python:3.7.5-slim
COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt


CMD ["gunicorn", "-b", ":8080", "main:APP"]

