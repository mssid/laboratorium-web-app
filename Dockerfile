FROM python:3.12-slim

RUN pip install poetry==2.0.0

WORKDIR /app

COPY pyproject.toml poetry.lock ./
COPY web_app ./web_app
RUN touch README.md

RUN poetry install

ENTRYPOINT ["poetry", "run", "python", "-m", "web_app.main"]
