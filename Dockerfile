FROM python:3.7


COPY requirements.txt ./requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt


WORKDIR /app
ADD src/ /app

EXPOSE 8080

RUN chmod +x ./entry_point.sh
ENTRYPOINT ["sh", "entry_point.sh"]
