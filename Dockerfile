FROM python:3.7

WORKDIR /app
ADD src/ /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8080

RUN chmod +x ./entry_point.sh
ENTRYPOINT ["sh", "entry_point.sh"]
