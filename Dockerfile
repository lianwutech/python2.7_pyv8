FROM python:2.7

RUN sed -i 's/archive.ubuntu.com/mirrors.sohu.com/' /etc/apt/sources.list

RUN apt-get update

RUN apt-get install subversion python-pip libboost-python1.54-dev libboost-thread1.54-dev libboost-system1.54-dev -y

RUN mkdir ~/.pip

RUN echo "[global]" >~/.pip/pip.conf

RUN echo "index-url = " >>~/.pip/pip.conf

RUN pip install svn+http://pyv8.googlecode.com/svn/trunk/#egg=pyv8-1.0-dev
