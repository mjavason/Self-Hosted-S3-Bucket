FROM minio/minio:latest

RUN curl -O https://dl.min.io/client/mc/release/linux-amd64/mc \
    && chmod +x mc \
    && mv mc /usr/bin/mc

ENV MINIO_ROOT_USER=admin
ENV MINIO_ROOT_PASSWORD=Strong@password123

ENV MINIO_BROWSER_REDIRECT_URL=/console

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 9000
EXPOSE 9090

CMD ["/entrypoint.sh"]