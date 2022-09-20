FROM python

MAINTAINER Saptashwa Mitra,sapmitra@colostate.edu

WORKDIR /

RUN ls -R workspace/
RUN pwd

COPY interceptor.py .
COPY static/ static/
COPY templates/ /templates/

RUN pip install --no-cache-dir flask

EXPOSE 5000

CMD ["python", "interceptor.py"]