FROM public.ecr.aws/docker/library/python:3.11

WORKDIR /var/task

COPY ./requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./app app/

CMD ["fastapi", "run", "app/main.py"]