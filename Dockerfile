FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.1

RUN gem install evrone-common-amqp --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["amqp_consumers"]
CMD ["--help"]
