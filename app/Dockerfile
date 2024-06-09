FROM python:3.6

EXPOSE 5000

WORKDIR /app

ADD app/requirements.txt /app

RUN pip install -r requirements.txt

ADD app/app.py /app
CMD ["python", "app.py"]
