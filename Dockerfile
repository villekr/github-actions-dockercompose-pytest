FROM python:3.7

WORKDIR /src

RUN pip install --upgrade pip
# Install unit test dependencies
RUN pip install pytest pytest-cov