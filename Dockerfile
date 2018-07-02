FROM wanlay/dev:alpine

COPY . /code

ADD supervisord.conf /etc

WORKDIR /code

RUN pip3 install -r requirements.txt

RUN cd frontend && npm install

EXPOSE 9000 9528 22

CMD    ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]