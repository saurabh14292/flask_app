FROM python:3.8-slim-buster

WORKDIR /flask_app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD ["flask_app.py" ]