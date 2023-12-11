FROM python:3.10-slim

WORKDIR /code

COPY ./requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r requirements.txt
#RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
COPY ./ /code/

CMD ["jupyter-notebook", "--ip='0.0.0.0'", "--port=8000", "--no-browser", "--allow-root"]