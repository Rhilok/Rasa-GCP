FROM rasa/rasa
ENV BOT_ENV=production
COPY . /var/www
WORKDIR /var/www
RUN pip install rasa==2.8.1
RUN rasa train
ENTRYPOINT [ “rasa”, “run”, “-p”, “8080”]
