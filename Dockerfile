FROM python:3.8-slim-buster

WORKDIR /python-docker
run pip3 install poetry

COPY pyproject.toml pyproject.toml
COPY poetry.lock poetry.lock
RUN poetry install

COPY . .

CMD [ "flask", "run", "--host=0.0.0.0"]