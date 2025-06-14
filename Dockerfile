FROM python:3.8-slim-buster 
# base-image it is

RUN apt update -y && apt install awscli -y
# updating all the packages
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]