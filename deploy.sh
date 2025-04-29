#!/bin/bash

echo "📥 Pull du dépôt Git..."
git pull origin main

echo "🚚 Déploiement dans /var/www/html..."
sudo rm -rf /var/www/html/*
sudo cp -r * /var/www/html/

echo "🔄 Reload de Nginx (au cas où)..."
sudo systemctl reload nginx

echo "✅ Déploiement terminé avec succès !"
