FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY wsgi.py .
COPY app.py .

CMD ["bash", "-c", "gunicorn --bind 0.0.0.0:8000 wsgi:app"]