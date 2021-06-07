FROM jordan/icinga2

RUN apt-get update && apt-get install -y vim && apt-get install -y python-pip
RUN pip install requests

# Copy service checking files to container
COPY plugins/check_op*.py /usr/lib/nagios/plugins/
RUN chmod +x /usr/lib/nagios/plugins/check_op*.py
COPY src /etc/icinga2.dist/conf.d/src

# Copy slack configuration files to container
COPY icinga2-slack-notification/slack-service-notification.sh /etc/icinga2.dist/scripts/
RUN chmod +x /etc/icinga2.dist/scripts/slack-service-notification.sh
COPY icinga2-slack-notification/slack-service-notification.conf /etc/icinga2.dist/conf.d/
COPY icinga2-slack-notification/slack-service-notification-command.conf /etc/icinga2.dist/conf.d/
COPY icinga2-slack-notification/slack-service-notification-apply.conf /etc/icinga2.dist/conf.d/