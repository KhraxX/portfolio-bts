#!/bin/bash

echo "📥 Pull du dépôt Git..."
git pull origin main

echo "📦 Installation des dépendances..."
npm install

echo "🔨 Build du projet..."
npm run build

echo "🚚 Déploiement dans /var/www/roudard.fr..."
sudo rm -rf /var/www/roudard.fr/*
sudo cp -r dist/* /var/www/roudard.fr/

echo "🔧 Permissions..."
sudo chown -R www-data:www-data /var/www/roudard.fr
sudo chmod -R 755 /var/www/roudard.fr

echo "🔄 Démarrage et reload de Nginx..."
sudo systemctl start nginx
sudo systemctl reload nginx

echo "✅ Déploiement terminé avec succès !"