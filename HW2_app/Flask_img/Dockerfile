FROM python
LABEL description = "The Python app"
MAINTAINER Thilina Mendis <btm0050@auburn.edu>
COPY mariadb_repo_setup .
RUN ./mariadb_repo_setup
RUN apt-get install libmariadb3 libmariadb-dev -y
RUN pip3 install Flask
RUN pip3 install mariadb
COPY api.py .
CMD ["python3","api.py"]
