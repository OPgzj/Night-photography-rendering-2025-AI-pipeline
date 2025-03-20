FROM python:3.13.2

RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev \
    libopencv-dev ffmpeg \
    libgl1-mesa-glx

# 更新pip
RUN python -m pip install --upgrade pip
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
COPY . /AI-pipeline
WORKDIR /AI-pipeline
