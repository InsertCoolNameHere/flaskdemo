FROM python

MAINTAINER Saptashwa Mitra,sapmitra@colostate.edu

WORKDIR /

RUN pip install --no-cache-dir flask

RUN ls -R workspace/
RUN pwd

COPY interceptor.py .
COPY static/ static/
COPY templates/ /templates/

EXPOSE 5000

CMD ["python", "interceptor.py"]