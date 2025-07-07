FROM python:3.11-slim

WORKDIR /var/task

COPY ./requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./app app/

CMD ["fastapi", "run", "app/main.py"]