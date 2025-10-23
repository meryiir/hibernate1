#!/bin/bash

echo "=== Installation de MySQL sur macOS ==="

# Vérifier si Homebrew est installé
if ! command -v brew &> /dev/null; then
    echo "Homebrew n'est pas installé. Installation de Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installation de MySQL..."
brew install mysql

echo "Démarrage de MySQL..."
brew services start mysql

echo "Attente du démarrage de MySQL..."
sleep 5

echo "Création de la base de données hibernate1..."
mysql -u root -e "CREATE DATABASE IF NOT EXISTS hibernate1 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

echo "Configuration terminée!"
echo ""
echo "Pour démarrer MySQL : brew services start mysql"
echo "Pour arrêter MySQL : brew services stop mysql"
echo "Pour se connecter : mysql -u root"
echo ""
echo "La base de données 'hibernate1' est maintenant créée et prête à être utilisée."
