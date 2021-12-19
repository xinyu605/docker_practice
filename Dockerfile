# Docker provides not only Web Server but also other App used
FROM python

WORKDIR /app

COPY . /app

CMD ["python", "rng.py"]