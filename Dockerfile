FROM python:3
ENV PYTHONUNBUFFERED=1
COPY ./ktfirsttry /ktfirsttry
WORKDIR /ktfirsttry
RUN pip install -r requirements.txt
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


