FROM dwolla/security-monkey-base
MAINTAINER dev@dwolla.com

ADD api-init.sh /usr/local/src/security_monkey/scripts/api-init.sh
ADD config-deploy.py /usr/local/src/security_monkey/env-config/config-deploy.py
RUN chmod +x /usr/local/src/security_monkey/scripts/api-init.sh

ENTRYPOINT ["/usr/local/src/security_monkey/scripts/api-init.sh"]
