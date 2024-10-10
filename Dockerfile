FROM python:3.9
WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt

COPY . /app
#EXPOSE 10000
EXPOSE 8080
CMD flask run -h 0.0.0.0 -p 8080 & python3 main.py