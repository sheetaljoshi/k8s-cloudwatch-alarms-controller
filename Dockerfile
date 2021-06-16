FROM python:3.7

COPY pip.conf /etc/pip.conf

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY swaperator swaperator

CMD kopf run --standalone -v swaperator/operator_handler.py