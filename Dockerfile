FROM slackware/base

#RUN apk add --no-cache --upgrade bash

COPY log.sh /log.sh
COPY test.sh /test.sh
RUN chmod +x /log.sh /test.sh
CMD ["alias sudo=''; /test.sh"]