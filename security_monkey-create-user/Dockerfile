FROM dwolla/security-monkey-base
MAINTAINER dev@dwolla.com

ADD create-user.sh /usr/local/src/security_monkey/scripts/create-user.sh
RUN chmod +x /usr/local/src/security_monkey/scripts/create-user.sh

ENTRYPOINT ["/usr/local/src/security_monkey/scripts/create-user.sh"]
