FROM jupyter/minimal-notebook

COPY requirements.txt /tmp/

RUN pip install --upgrade pip \
  && pip install -r /tmp/requirements.txt

RUN jupyter labextension install --no-build \
  @jupyter-widgets/jupyterlab-manager@1.1 \
  plotlywidget@1.4.0 \
  jupyterlab-plotly@1.4.0

RUN jupyter lab build

ENV JUPYTER_ENABLE_LAB=1