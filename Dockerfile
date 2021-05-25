FROM docker.io/centos:centos8.3.2011

LABEL maintainer "mpastecki"


RUN yum -y install epel-release

RUN yum -y install python3 \
                   python3-setuptools \
                   gcc \
                   make \
                   redhat-rpm-config \
                   ruby \
                   ruby-devel \
                   rubygem-rake

RUN yum -y install ansible


# install gems
RUN gem install bundler && \
    gem install serverspec:2.41.5 \
                serverspec-extended-types:0.1.1 \
                ansible_spec:0.3.2 
