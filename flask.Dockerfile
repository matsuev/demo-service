FROM demisto/python3

WORKDIR /my_app

RUN pip3 install Flask

RUN git clone https://github.com/matsuev/demo-service

CMD ["python3", "/my_app/demo-service/flask/main.py"]