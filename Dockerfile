FROM python:3.8.0
MAINTAINER davidcarvalho8421@gmail.com
COPY . /python-autobots
WORKDIR /python-autobots
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
CMD tail -f /dev/null