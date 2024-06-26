FROM python:3.10-slim

RUN mkdir -p /home/app

# create the app user
RUN addgroup --system app && adduser --system --group app

# create the appropriate directories
ENV HOME=/home/app
ENV APP_HOME=/home/app/web
RUN mkdir $APP_HOME
RUN mkdir $APP_HOME/staticfiles
WORKDIR $APP_HOME


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get install netcat-traditional

COPY entrypoint.sh .
RUN sed -i 's/\r$//g' entrypoint.sh
RUN sudo chmod +x entrypoint.sh
# copy project
COPY . $APP_HOME

# chown all the files to the app user
RUN sudo chown -R app:app $APP_HOME

# change to the app user
USER app

# ENTRYPOINT ["sh", "/home/app/web/entrypoint.sh"]
