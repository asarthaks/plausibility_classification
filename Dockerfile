FROM python:3.10

WORKDIR /code

COPY ./requirements.txt ./
RUN pip install --upgrade pip && \
    pip install --no-cache-dir --upgrade -r requirements.txt
#RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
COPY ./ /code/

RUN python -m nltk.downloader stopwords
RUN python -m nltk.downloader punkt
RUN python -m nltk.downloader wordnet

CMD ["jupyter-notebook", "--ip='0.0.0.0'", "--port=8000", "--no-browser", "--allow-root"]