#!/bin/bash

echo "Starting deployment..."

# Dừng ứng dụng nếu đang chạy
echo "Stopping current app..."
pm2 stop nestjs-app || true

# Chạy database migration nếu có (bỏ qua nếu không dùng database)
echo "📊 Running database migrations..."
npm run migration:run || true

# Restart ứng dụng với PM2
echo "🚀 Starting new version..."
pm2 start dist/main.js --name "nestjs-app" --update-env

# Xóa cache PM2 để đảm bảo cập nhật mới nhất
pm2 save
pm2 restart nestjs-app

echo "✅ Deployment successful!"
