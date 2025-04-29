#!/bin/bash

echo "📥 Pull du dépôt Git..."
git pull

echo "🚚 Déploiement dans /var/www/roudard.fr..."
sudo rm -rf /var/www/roudard.fr/*
sudo mv  ./ /var/www/roudard.fr/

echo "🔄 Reload de Nginx (au cas où)..."
sudo systemctl reload nginx

echo "✅ Déploiement terminé avec succès !"
