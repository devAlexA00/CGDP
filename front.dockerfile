FROM python:latest

WORKDIR /front

COPY ./front /front

RUN pip install -r requirements.txt

CMD ["python", "app.py"]

EXPOSE 5000
