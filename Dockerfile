FROM public.ecr.aws/lambda/python:3.9

WORKDIR /var/task

COPY ./requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./app app/

CMD ["app.main.handler"]