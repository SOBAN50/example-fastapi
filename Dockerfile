FROM python:3.9-alpine

WORKDIR /usr/src/app/

COPY requirements.txt ./

RUN pip install -r requirements.txt


COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]