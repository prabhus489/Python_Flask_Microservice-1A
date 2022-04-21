FROM python:3.8.5-slim
RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY helloflask helloflask
ENTRYPOINT ["python","./helloflask/helloflaskapp/flaskdbop.py"]