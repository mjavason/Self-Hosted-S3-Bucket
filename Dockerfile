FROM minio/minio:latest

EXPOSE 9000

ENV MINIO_BROWSER_REDIRECT_URL=/console

CMD ["server", "/data", "--address", ":9000", "--console-address", ":9001"]