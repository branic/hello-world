FROM registry.access.redhat.com/ubi9/nginx-120

COPY --chown=default ./website/ /opt/app-root/src/
COPY --chown=default ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

CMD nginx -g "daemon off;"
