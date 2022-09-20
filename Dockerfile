FROM python

MAINTAINER Saptashwa Mitra,sapmitra@colostate.edu

WORKDIR /

RUN pip install --no-cache-dir flask

RUN ls -la .
RUN pwd

COPY static/ static/
COPY templates/ /templates/
COPY interceptor.py .

EXPOSE 5000

CMD ["python", "interceptor.py"]