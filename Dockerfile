FROM python:3.9.0-slim-buster

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

RUN pip install pytest pytest-cov pytest-flask

CMD ["python", "app.py"]
