FROM minio/minio:latest

ENV MINIO_BROWSER_REDIRECT_URL=/console

CMD minio server /data --console-address ":9090"