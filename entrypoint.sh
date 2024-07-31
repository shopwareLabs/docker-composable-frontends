#!/bin/sh

export NODE_ENV=development

# Exit immediately if a command exits with a non-zero status
set -e

# Print commands and their arguments as they are executed
set -x

# Navigate to the application directory
cd /app

# Install dependencies if node_modules is missing
rm -rf pnpm-lock.yaml
pnpm -v
pnpm install --dev --no-frozen-lockfile --no-optional
pnpm add nuxi

# Start the application
exec pnpm run dev