FROM centos:latest
MAINTAINER Tomohiro Iizuka

ADD script/run.sh /bin/run.sh
RUN chmod +x /bin/run.sh

RUN yum update -y
RUN yum install java-1.7.0-openjdk.x86_64 -y

RUN yum install postgresql-server -y
RUN su postgres -c "initdb -D /var/lib/pgsql/data"
# RUN su postgres -c "cd /var/lib/pgsql/data && pg_ctl -D /var/lib/pgsql/data -l logfile start"

EXPOSE 5432

CMD ["/bin/run.sh"]


