FROM python:3.8

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

EXPOSE 8080

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "flask" ]

CMD [ "run","--host=0.0.0.0", "--port=8080"]

