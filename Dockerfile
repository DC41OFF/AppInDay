FROM nginx:latest
LABEL ITMammad AppInDay
EXPOSE 80
USER root
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.yaml ./
COPY entrypoint.sh ./
RUN chmod a+x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]