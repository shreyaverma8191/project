FROM python:3.9
WORKDIR /usr/src/app
RUN useradd app
USER app
COPY requirements.txt . 
RUN pip install -r requirements.txt 
COPY . /usr/src/app
EXPOSE 5000
CMD python app.py

 