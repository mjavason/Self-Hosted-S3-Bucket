FROM minio/minio:latest

EXPOSE 9000
EXPOSE 9090

ENV MINIO_BROWSER_REDIRECT_URL=/console

CMD ["server", "/data", "--console-address", ":9090"]