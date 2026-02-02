#!/bin/bash

ITEM_NAME="$1"
MARKET_NAME="$2"
PRICE="$3"

API_URL="http://localhost:8000/prices"

if [ -z "$ITEM_NAME" ] || [ -z "$MARKET_NAME" ] || [ -z "$PRICE" ]; then
  echo "Usage: ./ingest_price.sh <item_name> <market_name> <price>"
  exit 1
fi

echo "Submitting price for $ITEM_NAME at $MARKET_NAME"
echo "Price value: $PRICE"
echo "Target API: $API_URL"
