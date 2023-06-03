FROM python:3.8-slim
RUN pip install psycopg2-binary
WORKDIR /app/
COPY script.py .
COPY test.py .
CMD ["bash", "-c", "python script.py && python test.py"]