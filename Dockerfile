FROM python:3.12-alpine

RUN adduser -D appuser
USER appuser

COPY --chown=appuser:appuser ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

ENV PATH="/home/appuser/.local/bin:${PATH}"

COPY --chown=appuser:appuser . /app

CMD [ "gunicorn", "--bind", "0.0.0.0:5001", "diag:app" ]