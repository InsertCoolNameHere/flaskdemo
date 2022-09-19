FROM python

MAINTAINER Saptashwa Mitra,sapmitra@colostate.edu

RUN pip install --no-cache-dir flask

COPY static/ /static/
COPY templates/ /templates/
COPY interceptor.py .

EXPOSE 5000

CMD ["python", "interceptor.py"]