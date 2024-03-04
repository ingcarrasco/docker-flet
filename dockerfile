FROM python:3.12-alpine3.19
WORKDIR /app/
ADD ./app/ .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["python","/app/app.py"]