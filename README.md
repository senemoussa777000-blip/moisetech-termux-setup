🚀 MoiseTech Termux Ultimate Setup
__  __  ___  ___ ____  _____ _____ _____ ____ _   _ 
|  \/  |/ _ \|_ _/ ___|| ____|_   _| ____/ ___| | | |
| |\/| | | | || |\___ \|  _|   | | |  _|| |   | |_| |
| |  | | |_| || | ___) | |___  | | | |__| |___|  _  |
|_|  |_|\___/|___|____/|_____| |_| |_____\____|_| |_|
                                                    🇸🇳
Transforme ton Termux Android en un vrai environnement de développement professionnel — en une seule commande.
by Legacy — Le jeune Sénégalais 🇸🇳 | MoiseTech
⚡ Installation rapide
Colle cette commande dans Termux et c'est parti :
curl -fsSL https://raw.githubusercontent.com/TON_USERNAME/moisetech-termux-setup/main/setup.sh | bash
Ou télécharge et lance manuellement :
wget https://raw.githubusercontent.com/TON_USERNAME/moisetech-termux-setup/main/setup.sh
chmod +x setup.sh
bash setup.sh
📋 Ce que tu obtiens
Un menu interactif avec 36 options organisées en 7 catégories :
🎨 Style & Apparence
#
Option
Description
1
Style complet
Thème Dark Violet + Font MesloLGS NF
2
Oh My Zsh
Framework Zsh avec thèmes et plugins
3
Powerlevel10k
Thème terminal ultime avec infos Git
4
Plugins Zsh
Autosuggestions + Syntax highlighting
5
Extra-keys
Barre de touches personnalisée
🛠️ Outils Dev
#
Option
Description
6
Python complet
pip + venv + numpy, pandas, flask...
7
Node.js + NPM
Runtime JavaScript
8
Node + PM2
Serveur en arrière-plan
9
Git config
Configuration complète + clé SSH
10
Neovim
Éditeur de code pro
11
Outils essentiels
curl, wget, nano, vim, tree, zip...
12
FFmpeg
Traitement vidéo et audio
🗄️ Bases de données
#
Option
Description
13
SQLite
Base de données légère locale
14
MongoDB
Base de données NoSQL
15
PostgreSQL
Base de données relationnelle pro
16
Redis
Cache ultra rapide en mémoire
🌐 Réseau & Serveurs
#
Option
Description
17
Ngrok
Exposer localhost sur Internet
18
OpenSSH
Accès SSH depuis un PC
19
Apache
Serveur web
20
Nginx
Serveur web haute performance
21
Docker
Via proot-distro Ubuntu
🐧 Linux & Système
#
Option
Description
22
Ubuntu
Linux complet via proot-distro
23
Alpine Linux
Linux ultra léger
24
Moniteur système
htop + neofetch
25
Sécurité
nmap + openssl
🤖 IA & Automatisation
#
Option
Description
26
Python IA
scikit-learn + transformers
27
Ollama
Modèles IA locaux (llama3, mistral...)
28
Scraping
beautifulsoup4 + requests
29
Bot WhatsApp
Baileys + Node.js
30
Cron
Automatisation de tâches
💾 Sauvegarde & Outils
#
Option
Description
31
Alias utiles
Raccourcis de commandes
32
Backup
Sauvegarde de ta configuration
33
Restaurer
Restauration depuis un backup
34
Nettoyer cache
Libérer de l'espace
35
Reset complet
Remettre à zéro Termux
36
TOUT installer
Installation complète en une fois
📱 Prérequis
Android 7.0 ou plus récent
Application Termux installée depuis F-Droid (pas le Play Store)
Connexion Internet active
Au moins 2 Go d'espace libre
🎬 Guide pas à pas
Étape 1 — Installer Termux
Télécharge Termux depuis F-Droid uniquement. La version Play Store n'est plus maintenue.
Étape 2 — Autoriser le stockage
termux-setup-storage
Étape 3 — Lancer le setup
curl -fsSL https://raw.githubusercontent.com/TON_USERNAME/moisetech-termux-setup/main/setup.sh | bash
Étape 4 — Choisir les options
Le menu s'affiche. Tape le numéro de ce que tu veux installer. Chaque option guide étape par étape.
Étape 5 — Configurer Powerlevel10k (optionnel)
p10k configure
🔧 Utilisation manuelle
Si tu veux lancer le script déjà téléchargé :
bash ~/setup.sh
📁 Structure du projet
moisetech-termux-setup/
├── setup.sh          # Script principal
├── README.md         # Ce fichier
└── docs/
    ├── screenshots/  # Captures d'écran
    └── guide.md      # Guide détaillé
🤝 Contribuer
Tu veux ajouter une option ou corriger un bug ?
Fork ce repo
Crée une branche : git checkout -b feature/nouvelle-option
Commite tes changements : git commit -m "Ajout option X"
Push : git push origin feature/nouvelle-option
Ouvre une Pull Request
⭐ Support
Si ce projet t'a aidé, laisse une ⭐ sur GitHub !
Tu peux aussi :
Partager le projet avec tes amis dev
Signaler des bugs dans les Issues
Suggérer de nouvelles options
📜 Licence
MIT License — Libre d'utilisation, de modification et de distribution.
