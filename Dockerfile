FROM python:2.7

RUN sed -i 's/archive.ubuntu.com/mirrors.sohu.com/' /etc/apt/sources.list

RUN apt-get update

RUN apt-get install subversion python-pip libboost-python-dev libboost-thread-dev libboost-system-dev -y

RUN mkdir ~/.pip

RUN echo "[global]" >~/.pip/pip.conf

RUN echo "index-url = " >>~/.pip/pip.conf

RUN pip install svn+http://pyv8.googlecode.com/svn/trunk/#egg=pyv8-1.0-dev
