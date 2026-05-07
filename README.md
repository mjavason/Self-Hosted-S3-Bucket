# Self Hosted S3 Bucket

A self-hosted S3-compatible bucket solution that can be deployed on your own infrastructure. This is not meant to replace production s3 servers, but can serve as a temporary transition setup.

## Quick Start

### Deploy with Render

This project can be deployed directly to Render as a blueprint:

1. Push this repository to GitHub
2. Connect your GitHub repository to Render
3. Create a new Blueprint on the site
4. Configure your environment variables (see below)
5. Deploy!

## Usage

After deployment, your S3 bucket service will be accessible at your provided endpoint. Use the following environment variables to configure your client applications to connect to this self-hosted instance. Render only allows for exposing one port, so if you wish to see the Minio UI, update the render port env setting to 9001 and vice versa to switch back.

```
S3_BUCKET=dev
S3_REGION=us-east-1
S3_ENDPOINT=https://{yourdeployment}.onrender.com
S3_ROOT_USER=admin
S3_ROOT_PASSWORD=Strong@password123
```