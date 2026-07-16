#!/usr/bin/env bash
set -e

# run-local.sh - helper to run the project locally
# Usage: ./run-local.sh [docker|local]

MODE=${1:-docker}

if [ "$MODE" = "docker" ]; then
  echo "Starting services with Docker Compose..."
  docker-compose up --build
  exit 0
fi

if [ "$MODE" = "local" ]; then
  echo "Run services locally (ml_service, backend)"
  echo "1) Setup ml_service:\n   cd ml_service && python -m venv venv && source venv/bin/activate && pip install -r requirements.txt && python setup_index.py && uvicorn main:app --reload --port 8001"
  echo "2) Setup backend (open backend in VS/Code, set connection string and run): dotnet run"
  echo "3) Run Flutter app: cd flutter_app && flutter pub get && flutter run -d windows (or -d android)"
  exit 0
fi

echo "Unknown mode: $MODE. Use 'docker' or 'local'"
