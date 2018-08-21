FROM python:2.7

# Service user
RUN mkdir /home/mdstudio

WORKDIR /home/mdstudio

RUN git clone --branch devel --single-branch git://github.com/MD-Studio/MDStudio.git

RUN  cd MDStudio && pip install -r requirements-dev.txt &&  pip install -e mdstudio

RUN git clone --branch master --single-branch git://github.com/MD-Studio/common_resources.git

RUN cd /home/mdstudio/common_resources && pip install -e .

COPY entry_point_issue_python.sh /home/mdstudio/

CMD ["bash", "entry_point_issue_python.sh"]
