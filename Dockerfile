FROM alpine/openssl

COPY cert_generator.sh /app/cert_generator.sh

RUN adduser -D -g 0 app \
	&& chown -R app:0 /app \
	&& chmod -R g=u /app

USER app
WORKDIR /app

ENTRYPOINT ["/bin/sh"]
