#!/bin/bash
set -euo pipefail

PASSWORD="virgozki"
REGION="us-central1"
SERVICE_NAME="freeconfig"
WSPATH="/virgozki"
DOMAIN="www.google.com"

gcloud run deploy $SERVICE_NAME \
  --source . \
  --region $REGION \
  --platform managed \
  --allow-unauthenticated \
  --memory 512Mi --cpu 1 --port 8080

echo -e "\n✅ Deployment Done!"
SVC_URL=$(gcloud run services describe $SERVICE_NAME --region $REGION --format="value(status.url)")
echo "🔗 Service URL: $SVC_URL"
echo "🔑 Password: virgozki"
echo "🛤️ WS Path: /virgozki"
echo "🎭 Decoy Domain: google.com"

