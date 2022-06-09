FROM python:3.7
RUN apt-get update && apt-get install -y nginx

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY req.txt 
RUN pip install -r req.txt

COPY . .

COPY nginx.conf /etc/nginx/sites-enabled/default

CMD ["/bin/bash", "start.sh"]
EXPOSE 80
