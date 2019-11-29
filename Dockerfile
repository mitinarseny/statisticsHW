FROM jupyter/minimal-notebook

COPY requirements.txt /tmp/

RUN pip install --upgrade pip \
  && pip install -r /tmp/requirements.txt

