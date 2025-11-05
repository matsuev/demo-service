FROM demisto/python3

WORKDIR /my_app

COPY ./py/main.py .

CMD ["python3", "/my_app/main.py"]