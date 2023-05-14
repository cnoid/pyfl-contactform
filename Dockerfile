FROM python:3.9-alpine

RUN apk add --no-cache mongodb

WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY . /app

CMD ["python", "app.py"]
