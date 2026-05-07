FROM minio/minio:latest

ENV MINIO_ROOT_USER=admin
ENV MINIO_ROOT_PASSWORD=Strong@password123

CMD ["server", "/data", "--address", ":9000", "--console-address", ":9001"]