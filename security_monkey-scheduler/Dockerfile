FROM dwolla/security-monkey-base:0.8.0
MAINTAINER dev@dwolla.com

ADD scheduler-start.sh /usr/local/src/security_monkey/scripts/scheduler-start.sh

RUN chmod +x /usr/local/src/security_monkey/scripts/scheduler-start.sh

ENTRYPOINT ["/usr/local/src/security_monkey/scripts/scheduler-start.sh"]
