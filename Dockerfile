FROM python:3.14-slim

WORKDIR /hello-world

COPY hello-world/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY hello-world/ .

EXPOSE 32777

CMD ["python", "hello-world.py"]