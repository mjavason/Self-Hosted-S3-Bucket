FROM minio/minio:latest

EXPOSE 10000

CMD ["server", "/data", "--console-address", ":10000"]