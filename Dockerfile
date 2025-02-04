FROM python:3.9-slim


WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r ./requirements.txt

COPY main.py /app/main.py
COPY . . 

CMD uvicorn main:app --host=0.0.0.0 --reload



