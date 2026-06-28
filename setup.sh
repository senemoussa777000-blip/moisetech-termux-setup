#!/bin/bash

# ============================================================
#   MoiseTech Termux Ultimate Setup v3.0 
#   by Legacy  🇸🇳
#   + Session Hack intégrée par MOISETECH & CODEX
# ============================================================

clear
echo "🔧 Initialisation du système en cours..."
sleep 1
pkg install -y ncurses-utils > /dev/null 2>&1
export TERM=xterm-256color
echo "✅ Initialisation terminée."
echo ""

# ============================================================
#   COULEURS
# ============================================================
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLD='\033[1m'
RESET='\033[0m'

# ============================================================
#   FONCTIONS UTILITAIRES
# ============================================================
pause() {
  echo ""
  read -p "Appuie sur ENTRÉE pour continuer..." dummy
}

header() {
  clear
  echo -e "${PURPLE}"
  cat << 'BANNER'
 __  __  ___  ___ ____  _____ _____ _____ ____ _   _ 
|  \/  |/ _ \|_ _/ ___|| ____|_   _| ____/ ___| | | |
| |\/| | | | || |\___ \|  _|   | | |  _|| |   | |_| |
| |  | | |_| || | ___) | |___  | | | |__| |___|  _  |
|_|  |_|\___/|___|____/|_____| |_| |_____\____|_| |_|
                                                    🇸🇳
BANNER
  echo -e "${CYAN}         Termux Ultimate Setup v3.0 — Édition BEAST${RESET}"
  echo -e "${PURPLE}============================================================${RESET}"
  echo ""
}

step() {
  echo -e "\n${YELLOW}▶ ÉTAPE $1 — $2${RESET}"
}

success() {
  echo -e "${GREEN}✅ $1${RESET}"
}

error() {
  echo -e "${RED}❌ $1${RESET}"
}

info() {
  echo -e "${CYAN}ℹ️  $1${RESET}"
}

# ============================================================
#   MENU PRINCIPAL (avec variable globale)
# ============================================================
show_menu() {
  header
  echo -e "${BOLD}Choisit une option :${RESET}"
  echo ""
  echo -e "${PURPLE}━━━ 🎨 STYLE & APPARENCE ━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo "  1)  🎨 Style complet (couleurs + font + thème)"
  echo "  2)  💄 Installer Oh My Zsh"
  echo "  3)  ⚡ Installer Powerlevel10k"
  echo "  4)  🔌 Plugins zsh (autosuggestions + highlighting)"
  echo "  5)  ⌨️  Configurer les touches extra-keys"
  echo ""
  echo -e "${PURPLE}━━━ 🛠️  OUTILS DEV ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo "  6)  🐍 Python complet (pip + venv + libs)"
  echo "  7)  🟢 Node.js + NPM"
  echo "  8)  ⚙️  Node + PM2 (serveur en arrière-plan)"
  echo "  9)  📦 Git (config complète)"
  echo "  10) 📝 Neovim (éditeur pro)"
  echo "  11) 🔧 Outils essentiels (curl, wget, nano, vim)"
  echo "  12) 🎬 FFmpeg (vidéo + audio)"
  echo "  13) 📥 yt-dlp (télécharger vidéos YouTube)"
  echo ""
  echo -e "${PURPLE}━━━ 🗄️  BASE DE DONNÉES ━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo "  14) 🗃️  SQLite"
  echo "  15) 🍃 MongoDB"
  echo "  16) 🐘 PostgreSQL"
  echo "  17) 🔴 Redis"
  echo ""
  echo -e "${PURPLE}━━━ 🌐 RÉSEAU & SERVEURS ━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo "  18) 🌐 Ngrok (exposer localhost)"
  echo "  19) 🔐 OpenSSH (accès SSH)"
  echo "  20) 🌍 Serveur web Apache"
  echo "  21) 💚 Serveur web Nginx"
  echo "  22) 📱 Termux:API"
  echo ""
  echo -e "${PURPLE}━━━ 🐧 LINUX & SYSTÈME ━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo "  23) 🐧 Ubuntu complet (proot-distro)"
  echo "  24) 🏔️  Alpine Linux (léger)"
  echo "  25) 📊 Moniteur système (htop + neofetch)"
  echo ""
  echo -e "${PURPLE}━━━ 🤖 IA & AUTOMATISATION ━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo "  26) 🤖 Python IA (scikit-learn + transformers)"
  echo "  27) 🔗 Ollama (IA locale)"
  echo "  28) 🕷️  Scraping (beautifulsoup + requests)"
  echo "  29) 📱 Bot WhatsApp (baileys + node)"
  echo "  30) 🔄 Automatisation (cron + scripts)"
  echo ""
  echo -e "${PURPLE}━━━ 🔒 SESSION HACK – CYBERSÉCURITÉ OFFENSIVE ━━━━━━${RESET}"
  echo "  31) 🔥 Kali Linux complet (proot-distro)"
  echo "  32) 📱 Nethunter (Kali pour Termux)"
  echo "  33) 🕵️  Metasploit Framework"
  echo "  34) 🔑 Hydra (bruteforce)"
  echo "  35) 📡 Aircrack-ng (Wi-Fi)"
  echo "  36) 🧬 Wireshark (analyse paquets)"
  echo "  37) 🔐 Hashcat (cracker de mots de passe)"
  echo "  38) 🌐 SQLmap (injection SQL)"
  echo "  39) 🎯 XSStrike (XSS)"
  echo "  40) 📱 SocialFish (phishing)"
  echo "  41) 🦅 TheHarvester (reconnaissance)"
  echo "  42) 🔍 Sublist3r (sous-domaines)"
  echo "  43) 🚀 Sherlock (recherche usernames)"
  echo "  44) 🕸️  Photon (scraping)"
  echo "  45) 🔄 Recon-ng (framework OSINT)"
  echo "  46) 📡 Bettercap (MITM)"
  echo "  47) 🧪 Evilginx (phishing avancé)"
  echo "  48) 🔓 John the Ripper (amélioré)"
  echo "  49) 🛠️  Nikto (scan web)"
  echo "  50) 🧹 WPScan (WordPress)"
  echo "  51) 🌐 Dirb (directory brute force)"
  echo "  52) 🔍 GoBuster (autre dir brute)"
  echo "  53) 🧬 Legion (scan automatisé)"
  echo "  54) 🚀 ExifTool (métadonnées)"
  echo "  55) 🔐 Steghide (stéganographie)"
  echo "  56) 🎭 MaskPhish (URL masquée)"
  echo "  57) 📱 Zphisher (phishing local)"
  echo "  58) 🧠 OSINT Framework"
  echo ""
  echo -e "${PURPLE}━━━ 💾 SAUVEGARDE & OUTILS ━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo "  59) 🔗 Alias utiles"
  echo "  60) 💾 Backup configuration"
  echo "  61) 🔄 Restaurer backup"
  echo "  62) 🧹 Nettoyer le cache"
  echo "  63) ⚡ Tout mettre à jour"
  echo "  64) 🔄 Reset complet Termux"
  echo "  65) ⚡ TOUT installer d'un coup"
  echo "  0)  ❌ Quitter"
  echo ""
  echo -e "${PURPLE}============================================================${RESET}"
  
  # Variable GLOBALE : on utilise un nom différent pour éviter les conflits
  read -p "Ton choix [0-65]: " MENU_CHOIX
}

# ============================================================
#   FONCTIONS D'INSTALLATION (EXEMPLES)
# ============================================================

install_style() {
  header
  echo -e "${BOLD}🎨 STYLE COMPLET${RESET}"
  pause
  step 1 "Création du dossier .termux"
  mkdir -p ~/.termux
  success "Dossier créé"
  step 2 "Téléchargement de la font MesloLGS NF"
  wget -q --show-progress -O ~/.termux/font.ttf \
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
  success "Font installée"
  step 3 "Application du thème Dark Violet"
  cat > ~/.termux/colors.properties << 'EOF'
background=#0D0D1A
foreground=#C8B8FF
cursor=#A076F9
color0=#0D0D1A
color1=#FF5555
color2=#A076F9
color3=#FFB86C
color4=#6272A4
color5=#BD93F9
color6=#8BE9FD
color7=#F8F8F2
color8=#44475A
color9=#FF6E6E
color10=#C8A9FA
color11=#FFD580
color12=#6272A4
color13=#D6ACFF
color14=#A4FFFF
color15=#FFFFFF
EOF
  success "Thème appliqué"
  step 4 "Configuration termux.properties"
  cat > ~/.termux/termux.properties << 'EOF'
extra-keys = [['ESC','|','`','~','[',']','DEL'],['TAB','CTRL','ALT','LEFT','UP','DOWN','RIGHT']]
bell-character = ignore
use-black-ui = true
EOF
  step 5 "Rechargement"
  termux-reload-settings
  success "Style appliqué ! Redémarre Termux."
  pause
}

install_ohmyzsh() {
  header
  echo -e "${BOLD}💄 OH MY ZSH${RESET}"
  pause
  step 1 "Installation de Zsh"
  pkg install -y zsh
  success "Zsh installé"
  step 2 "Installation de Oh My Zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  success "Oh My Zsh installé"
  step 3 "Shell par défaut"
  chsh -s zsh 2>/dev/null || true
  success "Shell changé en Zsh. Lance : source ~/.zshrc"
  pause
}

install_p10k() {
  header
  echo -e "${BOLD}⚡ POWERLEVEL10K${RESET}"
  pause
  step 1 "Vérification Oh My Zsh"
  if [ ! -d "$HOME/.oh-my-zsh" ]; then
    error "Oh My Zsh manquant ! Lance d'abord l'option 2."
    pause; return
  fi
  success "Oh My Zsh détecté"
  step 2 "Clonage Powerlevel10k"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  step 3 "Activation du thème"
  sed -i 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
  success "Thème activé ! Lance : p10k configure"
  pause
}

install_plugins() {
  header
  echo -e "${BOLD}🔌 PLUGINS ZSH${RESET}"
  pause
  step 1 "zsh-autosuggestions"
  git clone https://github.com/zsh-users/zsh-autosuggestions \
    ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  step 2 "zsh-syntax-highlighting"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting \
    ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
  step 3 "Activation"
  sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc
  source ~/.zshrc 2>/dev/null || true
  success "Plugins actifs !"
  pause
}

install_extrakeys() {
  header
  echo -e "${BOLD}⌨️  EXTRA-KEYS${RESET}"
  echo "  1) Dev Python/Linux"
  echo "  2) Dev Web"
  echo "  3) Git"
  read -p "Choix [1-3]: " k
  mkdir -p ~/.termux
  case $k in
    1) echo "extra-keys = [['ESC','|','\`','~','[',']','DEL'],['TAB','CTRL','ALT','LEFT','UP','DOWN','RIGHT']]" > ~/.termux/termux.properties ;;
    2) echo "extra-keys = [['ESC','<','>','/','DEL','{','}'],['TAB','CTRL','ALT','LEFT','UP','DOWN','RIGHT']]" > ~/.termux/termux.properties ;;
    3) echo "extra-keys = [['ESC','|','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" > ~/.termux/termux.properties ;;
  esac
  termux-reload-settings
  success "Touches mises à jour !"
  pause
}

install_python() {
  header
  echo -e "${BOLD}🐍 PYTHON COMPLET${RESET}"
  pause
  step 1 "Installation Python"
  pkg install -y python
  success "Python : $(python3 --version)"
  step 2 "Mise à jour pip"
  pip install --upgrade pip
  step 3 "Librairies essentielles"
  pip install requests flask fastapi numpy pandas matplotlib
  success "Librairies installées"
  info "Activer venv : python3 -m venv ~/monenv && source ~/monenv/bin/activate"
  pause
}

install_node() {
  header
  echo -e "${BOLD}🟢 NODE.JS + NPM${RESET}"
  pause
  step 1 "Installation"
  pkg install -y nodejs npm
  success "Node : $(node --version) | NPM : $(npm --version)"
  step 2 "Packages globaux"
  npm install -g nodemon express-generator
  success "nodemon et express-generator installés"
  pause
}

install_pm2() {
  header
  echo -e "${BOLD}⚙️  PM2${RESET}"
  pause
  step 1 "Installation PM2"
  npm install -g pm2
  success "PM2 : $(pm2 --version)"
  info "Lancer    : pm2 start app.js"
  info "Voir      : pm2 list"
  info "Logs      : pm2 logs"
  info "Arrêter   : pm2 stop app"
  pause
}

install_git() {
  header
  echo -e "${BOLD}📦 GIT CONFIG COMPLÈTE${RESET}"
  pause
  step 1 "Installation Git"
  pkg install -y git
  success "Git : $(git --version)"
  step 2 "Identité"
  read -p "Ton nom GitHub : " git_name
  read -p "Ton email GitHub : " git_email
  git config --global user.name "$git_name"
  git config --global user.email "$git_email"
  git config --global init.defaultBranch main
  git config --global alias.st status
  git config --global alias.lg "log --oneline --graph"
  success "Git configuré"
  step 3 "Clé SSH (optionnel)"
  read -p "Générer une clé SSH ? (o/n) : " s
  if [ "$s" = "o" ]; then
    ssh-keygen -t ed25519 -C "$git_email" -f ~/.ssh/id_ed25519 -N ""
    info "Clé publique à copier dans GitHub :"
    cat ~/.ssh/id_ed25519.pub
  fi
  pause
}

install_neovim() {
  header
  echo -e "${BOLD}📝 NEOVIM${RESET}"
  pause
  step 1 "Installation"
  pkg install -y neovim
  success "Neovim : $(nvim --version | head -1)"
  step 2 "Configuration"
  mkdir -p ~/.config/nvim
  cat > ~/.config/nvim/init.vim << 'EOF'
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set mouse=a
syntax on
colorscheme desert
set cursorline
EOF
  echo "alias vi='nvim'" >> ~/.zshrc
  success "Neovim configuré"
  info "Commandes : i=écrire | ESC=sortir | :w=sauvegarder | :q=quitter"
  pause
}

install_essentials() {
  header
  echo -e "${BOLD}🔧 OUTILS ESSENTIELS${RESET}"
  pause
  step 1 "Installation"
  pkg install -y curl wget nano vim tree zip unzip htop ncurses-utils
  success "Tous les outils installés !"
  pause
}

install_ffmpeg() {
  header
  echo -e "${BOLD}🎬 FFMPEG${RESET}"
  pause
  step 1 "Installation"
  pkg install -y ffmpeg
  success "FFmpeg : $(ffmpeg -version | head -1)"
  info "MP4 → MP3   : ffmpeg -i video.mp4 audio.mp3"
  info "Compresser  : ffmpeg -i input.mp4 -crf 28 output.mp4"
  info "Image vidéo : ffmpeg -i video.mp4 -ss 00:01:00 -frames:v 1 image.jpg"
  pause
}

install_ytdlp() {
  header
  echo -e "${BOLD}📥 YT-DLP — Télécharger vidéos${RESET}"
  pause
  step 1 "Installation de yt-dlp"
  pkg install -y python
  pip install yt-dlp
  success "yt-dlp installé"
  info "Télécharger une vidéo YouTube :"
  info "  yt-dlp URL_VIDEO"
  info "Télécharger en MP3 seulement :"
  info "  yt-dlp -x --audio-format mp3 URL_VIDEO"
  info "Choisir la qualité :"
  info "  yt-dlp -f best URL_VIDEO"
  pause
}

install_sqlite() {
  header
  echo -e "${BOLD}🗃️  SQLITE${RESET}"
  pause
  step 1 "Installation"
  pkg install -y sqlite
  success "SQLite : $(sqlite3 --version)"
  info "Ouvrir une DB : sqlite3 mabase.db"
  info "Créer table   : CREATE TABLE users (id INTEGER PRIMARY KEY, nom TEXT);"
  info "Insérer       : INSERT INTO users (nom) VALUES ('Legacy');"
  info "Voir données  : SELECT * FROM users;"
  info "Quitter       : .quit"
  pause
}

install_mongodb() {
  header
  echo -e "${BOLD}🍃 MONGODB${RESET}"
  pause
  step 1 "Installation"
  pkg install -y mongodb
  mkdir -p ~/mongodb/data
  success "MongoDB installé"
  info "Démarrer  : mongod --dbpath ~/mongodb/data &"
  info "Shell     : mongosh"
  info "Insérer   : db.users.insertOne({nom:'Legacy'})"
  info "Voir      : db.users.find()"
  pause
}

install_postgresql() {
  header
  echo -e "${BOLD}🐘 POSTGRESQL${RESET}"
  pause
  step 1 "Installation"
  pkg install -y postgresql
  initdb -D ~/postgres/data
  success "PostgreSQL installé"
  info "Démarrer : pg_ctl -D ~/postgres/data start"
  info "Shell    : psql -U $(whoami)"
  pause
}

install_redis() {
  header
  echo -e "${BOLD}🔴 REDIS${RESET}"
  pause
  step 1 "Installation"
  pkg install -y redis
  success "Redis installé"
  info "Démarrer  : redis-server &"
  info "Shell     : redis-cli"
  info "Stocker   : SET clé valeur"
  info "Récupérer : GET clé"
  pause
}

install_ngrok() {
  header
  echo -e "${BOLD}🌐 NGROK${RESET}"
  pause
  step 1 "Installation"
  pkg install -y wget
  wget -q --show-progress \
    https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz -O ngrok.tgz
  tar -xzf ngrok.tgz
  mv ngrok $PREFIX/bin/
  rm -f ngrok.tgz
  success "Ngrok installé"
  step 2 "Configuration token"
  info "Va sur https://ngrok.com → Crée un compte → Copie ton authtoken"
  read -p "Colle ton authtoken : " ngrok_token
  ngrok config add-authtoken "$ngrok_token"
  success "Token configuré"
  info "Exposer port 8080 : ngrok http 8080"
  info "Exposer SSH       : ngrok tcp 8022"
  info "Voir requêtes     : http://127.0.0.1:4040"
  pause
}

install_ssh() {
  header
  echo -e "${BOLD}🔐 OPENSSH${RESET}"
  pause
  step 1 "Installation"
  pkg install -y openssh
  sshd
  success "SSH démarré sur le port 8022"
  MY_IP=$(ifconfig 2>/dev/null | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | head -1)
  info "Ton IP : $MY_IP"
  info "Depuis PC : ssh -p 8022 $(whoami)@$MY_IP"
  step 2 "Mot de passe"
  passwd
  pause
}

install_apache() {
  header
  echo -e "${BOLD}🌍 APACHE${RESET}"
  pause
  step 1 "Installation"
  pkg install -y apache2
  apachectl start
  success "Apache démarré"
  info "Fichiers web : $PREFIX/share/apache2/default-site/htdocs/"
  info "Accès        : http://localhost:8080"
  pause
}

install_nginx() {
  header
  echo -e "${BOLD}💚 NGINX${RESET}"
  pause
  step 1 "Installation"
  pkg install -y nginx
  nginx
  success "Nginx démarré"
  info "Dossier web : $PREFIX/share/nginx/html/"
  info "Accès       : http://localhost:8080"
  info "Arrêter     : nginx -s stop"
  pause
}

install_termuxapi() {
  header
  echo -e "${BOLD}📱 TERMUX:API${RESET}"
  pause
  step 1 "Installation"
  pkg install -y termux-api
  success "Termux:API installé"
  info "⚠️  Installe aussi l'app Termux:API depuis F-Droid !"
  info ""
  info "Commandes utiles :"
  info "  Batterie    : termux-battery-status"
  info "  SMS         : termux-sms-send -n NUMERO 'Message'"
  info "  Notification: termux-notification --title 'Titre' --content 'Texte'"
  info "  Lampe       : termux-torch on / off"
  info "  Vibrer      : termux-vibrate -d 500"
  info "  Copier      : termux-clipboard-set 'texte'"
  pause
}

install_ubuntu() {
  header
  echo -e "${BOLD}🐧 UBUNTU COMPLET${RESET}"
  pause
  step 1 "Installation proot-distro"
  pkg install -y proot-distro
  step 2 "Téléchargement Ubuntu"
  proot-distro install ubuntu
  success "Ubuntu installé !"
  info "Entrer dans Ubuntu : proot-distro login ubuntu"
  info "Mettre à jour      : apt update && apt upgrade -y"
  info "Quitter            : exit"
  pause
}

install_alpine() {
  header
  echo -e "${BOLD}🏔️  ALPINE LINUX${RESET}"
  pause
  step 1 "Installation"
  pkg install -y proot-distro
  proot-distro install alpine
  success "Alpine installé !"
  info "Entrer : proot-distro login alpine"
  info "Installer un outil : apk add nom-outil"
  pause
}

install_monitor() {
  header
  echo -e "${BOLD}📊 MONITEUR SYSTÈME${RESET}"
  pause
  step 1 "Installation htop + neofetch"
  pkg install -y htop neofetch
  success "htop et neofetch installés"
  step 2 "Neofetch au démarrage ?"
  read -p "Afficher neofetch à chaque ouverture ? (o/n) : " n
  if [ "$n" = "o" ]; then
    echo "neofetch" >> ~/.zshrc
    success "Ajouté au démarrage"
  fi
  neofetch
  pause
}

install_ai_python() {
  header
  echo -e "${BOLD}🤖 PYTHON IA${RESET}"
  pause
  step 1 "Dépendances"
  pkg install -y python clang libxml2
  step 2 "Librairies IA"
  pip install scikit-learn transformers datasets
  success "Librairies IA installées"
  python3 -c "import sklearn; print('scikit-learn OK :', sklearn.__version__)"
  pause
}

install_ollama() {
  header
  echo -e "${BOLD}🔗 OLLAMA — IA locale${RESET}"
  pause
  info "Ollama nécessite Ubuntu via proot-distro (option 23)"
  info "Dans Ubuntu, lance :"
  echo "  curl -fsSL https://ollama.com/install.sh | sh"
  echo "  ollama serve &"
  echo "  ollama run llama3"
  info "⚠️  Les modèles pèsent 3-8 GB. Vérifie ton stockage."
  pause
}

install_scraping() {
  header
  echo -e "${BOLD}🕷️  SCRAPING WEB${RESET}"
  pause
  step 1 "Installation librairies"
  pip install beautifulsoup4 requests lxml
  success "Librairies installées"
  step 2 "Script exemple"
  cat > ~/test_scraping.py << 'EOF'
import requests
from bs4 import BeautifulSoup

url = "https://example.com"
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')

print("Titre:", soup.title.text)
for p in soup.find_all('p')[:3]:
    print("-", p.text[:100])
EOF
  success "Script créé : ~/test_scraping.py"
  info "Tester : python3 ~/test_scraping.py"
  pause
}

install_whatsapp_bot() {
  header
  echo -e "${BOLD}📱 BOT WHATSAPP — Baileys${RESET}"
  pause
  if ! command -v node &>/dev/null; then
    error "Node.js manquant ! Lance d'abord l'option 7."
    pause; return
  fi
  step 1 "Création du projet"
  mkdir -p ~/whatsapp-bot && cd ~/whatsapp-bot
  npm init -y
  step 2 "Installation Baileys"
  npm install @whiskeysockets/baileys qrcode-terminal
  step 3 "Création du bot"
  cat > ~/whatsapp-bot/index.js << 'EOF'
const { default: makeWASocket, useMultiFileAuthState } = require('@whiskeysockets/baileys')
const qrcode = require('qrcode-terminal')

async function startBot() {
  const { state, saveCreds } = await useMultiFileAuthState('./auth')
  const sock = makeWASocket({ auth: state })

  sock.ev.on('connection.update', ({ connection, qr }) => {
    if (qr) {
      console.log('Scanne ce QR code avec WhatsApp :')
      qrcode.generate(qr, { small: true })
    }
    if (connection === 'open') console.log('✅ Bot connecté !')
  })

  sock.ev.on('creds.update', saveCreds)

  sock.ev.on('messages.upsert', async ({ messages }) => {
    const msg = messages[0]
    if (!msg.key.fromMe && msg.message) {
      const text = msg.message.conversation || ''
      const from = msg.key.remoteJid
      if (text.toLowerCase() === 'salut') {
        await sock.sendMessage(from, { text: '👋 Salut ! Bot MoiseTech 🇸🇳' })
      }
    }
  })
}

startBot()
EOF
  success "Bot créé dans ~/whatsapp-bot/"
  info "Lancer : cd ~/whatsapp-bot && node index.js"
  pause
}

install_cron() {
  header
  echo -e "${BOLD}🔄 AUTOMATISATION CRON${RESET}"
  pause
  step 1 "Installation cronie"
  pkg install -y cronie
  crond
  success "Cron démarré"
  step 2 "Script de backup auto"
  cat > ~/auto_backup.sh << 'EOF'
#!/bin/bash
DATE=$(date +%Y%m%d_%H%M%S)
mkdir -p ~/backups
cp ~/.zshrc ~/backups/.zshrc_$DATE
echo "Backup créé : $DATE"
EOF
  chmod +x ~/auto_backup.sh
  success "Script ~/auto_backup.sh créé"
  info "Éditer cron    : crontab -e"
  info "Chaque jour 8h : 0 8 * * * ~/auto_backup.sh"
  info "Voir les tâches: crontab -l"
  pause
}

install_alias() {
  header
  echo -e "${BOLD}🔗 ALIAS UTILES${RESET}"
  pause
  cat >> ~/.zshrc << 'EOF'

# === MoiseTech Alias ===
alias ll='ls -la'
alias la='ls -A'
alias cls='clear'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias glog='git log --oneline --graph'
alias py='python3'
alias serve='python3 -m http.server 8080'
alias update='pkg update && pkg upgrade -y'
alias ubuntu='proot-distro login ubuntu'
alias myip='curl ifconfig.me'
alias weather='curl wttr.in'
alias reload='source ~/.zshrc'
alias zshconfig='nvim ~/.zshrc'
EOF
  source ~/.zshrc 2>/dev/null || true
  success "Alias ajoutés ! Teste : ll, myip, weather"
  pause
}

do_backup() {
  header
  echo -e "${BOLD}💾 BACKUP${RESET}"
  pause
  BACKUP_DIR=~/backup/$(date +%Y%m%d_%H%M%S)
  mkdir -p "$BACKUP_DIR"
  [ -f ~/.zshrc ] && cp ~/.zshrc "$BACKUP_DIR/" && success ".zshrc sauvegardé"
  [ -f ~/.p10k.zsh ] && cp ~/.p10k.zsh "$BACKUP_DIR/" && success ".p10k.zsh sauvegardé"
  [ -f ~/.termux/colors.properties ] && cp ~/.termux/colors.properties "$BACKUP_DIR/" && success "colors.properties sauvegardé"
  [ -f ~/.termux/termux.properties ] && cp ~/.termux/termux.properties "$BACKUP_DIR/" && success "termux.properties sauvegardé"
  [ -f ~/.termux/font.ttf ] && cp ~/.termux/font.ttf "$BACKUP_DIR/" && success "font.ttf sauvegardé"
  success "Backup complet dans : $BACKUP_DIR"
  pause
}

do_restore() {
  header
  echo -e "${BOLD}🔄 RESTAURER BACKUP${RESET}"
  pause
  ls ~/backup/ 2>/dev/null || { error "Aucun backup trouvé."; pause; return; }
  read -p "Nom du dossier backup : " backup_name
  BACKUP_DIR=~/backup/$backup_name
  [ ! -d "$BACKUP_DIR" ] && { error "Dossier introuvable."; pause; return; }
  [ -f "$BACKUP_DIR/.zshrc" ] && cp "$BACKUP_DIR/.zshrc" ~/.zshrc && success ".zshrc restauré"
  [ -f "$BACKUP_DIR/colors.properties" ] && cp "$BACKUP_DIR/colors.properties" ~/.termux/ && success "colors.properties restauré"
  [ -f "$BACKUP_DIR/termux.properties" ] && cp "$BACKUP_DIR/termux.properties" ~/.termux/ && success "termux.properties restauré"
  termux-reload-settings
  success "Restauration terminée !"
  pause
}

clean_cache() {
  header
  echo -e "${BOLD}🧹 NETTOYAGE CACHE${RESET}"
  pause
  step 1 "Nettoyage"
  pkg autoclean
  apt autoremove -y 2>/dev/null || true
  success "Cache nettoyé !"
  df -h ~
  pause
}

update_all() {
  header
  echo -e "${BOLD}⚡ MISE À JOUR COMPLÈTE${RESET}"
  pause
  step 1 "Mise à jour Termux"
  pkg update && pkg upgrade -y
  success "Système à jour !"
  pause
}

do_reset() {
  header
  echo -e "${BOLD}🔄 RESET COMPLET${RESET}"
  error "Cette action supprime Oh My Zsh, .zshrc, thème Termux"
  read -p "Tape 'RESET' pour confirmer : " confirm
  if [ "$confirm" = "RESET" ]; then
    rm -rf ~/.oh-my-zsh ~/.zshrc ~/.p10k.zsh ~/.termux/colors.properties
    pkg uninstall zsh -y 2>/dev/null
    success "Reset effectué. Redémarre Termux."
  else
    info "Reset annulé."
  fi
  pause
}

# ============================================================
#   SESSION HACK – FONCTIONS
# ============================================================

install_kali() {
  header
  echo -e "${BOLD}🔥 KALI LINUX COMPLET${RESET}"
  echo "🔹 Kali est la distribution ultime pour la cybersécurité."
  echo "🔹 Contient +600 outils : sniffing, cracking, exploit, forensique."
  echo "🔹 S'installe dans un conteneur proot-distro sur Termux."
  echo ""
  read -p "Installer Kali ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation proot-distro"
  pkg install -y proot-distro
  step 2 "Téléchargement Kali"
  proot-distro install kali
  success "Kali installé !"
  info "Lancer Kali    : proot-distro login kali"
  info "Mettre à jour  : sudo apt update && sudo apt upgrade -y"
  info "Installer un outil : sudo apt install nmap -y"
  info "Quitter        : exit"
  info "📌 Kali te permet de lancer Metasploit, Nmap, Wireshark, etc."
  pause
}

install_nethunter() {
  header
  echo -e "${BOLD}📱 NETHUNTER – Kali pour Termux${RESET}"
  echo "🔹 Nethunter est la version mobile de Kali Linux."
  echo "🔹 Optimisé pour Termux, avec interface graphique possible."
  echo "🔹 Permet des attaques Wi-Fi, Bluetooth, et audits mobiles."
  echo ""
  read -p "Installer Nethunter ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation des dépendances"
  pkg install -y wget
  step 2 "Téléchargement du script Nethunter"
  wget -O install-nethunter-termux https://offs.ec/2MceZWr
  chmod +x install-nethunter-termux
  step 3 "Exécution"
  ./install-nethunter-termux
  success "Nethunter installé !"
  info "Lancer Nethunter : nh"
  info "Interface graphique : nh kex &"
  info "📌 Nethunter donne accès à des outils comme Aircrack-ng, Bettercap, etc."
  pause
}

install_metasploit() {
  header
  echo -e "${BOLD}🕵️  METASPLOIT FRAMEWORK${RESET}"
  echo "🔹 Metasploit est le couteau suisse de l'exploitation."
  echo "🔹 Contient des milliers d'exploits pour failles logicielles."
  echo "🔹 Permet de créer des payloads, listener, post-exploitation."
  echo ""
  read -p "Installer Metasploit ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation des dépendances"
  pkg install -y ruby git
  step 2 "Clonage de Metasploit"
  git clone https://github.com/rapid7/metasploit-framework.git ~/metasploit
  cd ~/metasploit
  gem install bundler
  bundle install
  success "Metasploit installé !"
  info "Lancer Metasploit : cd ~/metasploit && ./msfconsole"
  info "Exemple d'exploit : use exploit/windows/smb/ms17_010_eternalblue"
  info "📌 Metasploit est l'outil de référence pour les tests d'intrusion."
  pause
}

install_hydra() {
  header
  echo -e "${BOLD}🔑 HYDRA – Brute-force de mots de passe${RESET}"
  echo "🔹 Hydra attaque les services réseaux \(SSH, FTP, HTTP, etc.\)"
  echo "🔹 Supporte +50 protocoles."
  echo "🔹 Utilise des dictionnaires pour tester des milliers de mots de passe."
  echo ""
  read -p "Installer Hydra ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Hydra"
  pkg install -y hydra
  success "Hydra installé !"
  info "Attaquer SSH : hydra -l root -P /usr/share/wordlists/rockyou.txt 192.168.1.1 ssh"
  info "Attaquer FTP : hydra -l admin -P wordlist.txt ftp://192.168.1.1"
  info "📌 Utilise des listes de mots comme rockyou.txt pour maximiser les chances."
  echo -e "${RED}⚠️  N'utilise Hydra que sur des systèmes dont tu es propriétaire ou avec autorisation !${RESET}"
  pause
}

install_aircrack() {
  header
  echo -e "${BOLD}📡 AIRCRACK-NG – Suite Wi-Fi${RESET}"
  echo "🔹 Aircrack-ng est la suite ultime pour l'audit Wi-Fi."
  echo "🔹 Capture des paquets, cracke les clés WEP/WPA/WPA2."
  echo "🔹 Fonctionne avec une carte Wi-Fi en mode moniteur."
  echo ""
  read -p "Installer Aircrack-ng ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Aircrack-ng"
  pkg install -y aircrack-ng
  success "Aircrack-ng installé !"
  info "Mettre la carte en mode moniteur : airmon-ng start wlan0"
  info "Scanner les réseaux : airodump-ng wlan0mon"
  info "Cracker une clé WPA : aircrack-ng -w wordlist.txt capture.cap"
  info "📌 Nécessite une carte Wi-Fi externe \(Nethunter compatible\)."
  echo -e "${RED}⚠️  N'utilise Aircrack-ng que sur TES propres réseaux !${RESET}"
  pause
}

install_wireshark() {
  header
  echo -e "${BOLD}🧬 WIRESHARK – Analyse de paquets${RESET}"
  echo "🔹 Wireshark capture et analyse le trafic réseau en temps réel."
  echo "🔹 Permet de visualiser les protocoles, les conversations, les flux."
  echo "🔹 Version CLI : tshark \(légère pour Termux\)."
  echo ""
  read -p "Installer Wireshark \(tshark\) ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation tshark"
  pkg install -y tshark
  success "tshark installé !"
  info "Capturer les paquets : tshark -i wlan0"
  info "Filtrer HTTP : tshark -i wlan0 -Y 'http.request.method == GET'"
  info "Sauvegarder une capture : tshark -i wlan0 -w capture.pcap"
  info "📌 Wireshark est l'outil de diagnostic réseau le plus connu."
  pause
}

install_hashcat() {
  header
  echo -e "${BOLD}🔐 HASHCAT – Cracker de mots de passe${RESET}"
  echo "🔹 Hashcat est le cracker de mots de passe le plus rapide au monde."
  echo "🔹 Utilise le GPU pour des attaques ultra-rapides \(OpenCL\)."
  echo "🔹 Supporte +300 types de hash \(MD5, SHA, NTLM, etc.\)"
  echo ""
  read -p "Installer Hashcat ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Hashcat"
  pkg install -y hashcat
  success "Hashcat installé !"
  info "Cracker MD5 : hashcat -m 0 hash.txt wordlist.txt"
  info "Cracker SHA256 : hashcat -m 1400 hash.txt wordlist.txt"
  info "Utiliser le GPU : hashcat -m 0 -D 1,2 hash.txt wordlist.txt"
  info "📌 Hashcat peut tester des milliards de mots de passe par seconde sur GPU."
  echo -e "${RED}⚠️  N'utilise Hashcat que sur TES propres hashs !${RESET}"
  pause
}

install_sqlmap() {
  header
  echo -e "${BOLD}🌐 SQLMAP – Injection SQL${RESET}"
  echo "🔹 SQLmap automatise l'injection SQL pour les bases de données."
  echo "🔹 Détecte et exploite les vulnérabilités SQL."
  echo "🔹 Permet d'extraire des données, des bases, des utilisateurs."
  echo ""
  read -p "Installer SQLmap ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation SQLmap"
  pkg install -y sqlmap
  success "SQLmap installé !"
  info "Scanner une URL : sqlmap -u 'http://cible.com/page.php?id=1'"
  info "Extraire toutes les bases : sqlmap -u 'http://cible.com/page.php?id=1' --dbs"
  info "Extraire une table : sqlmap -u 'http://cible.com/page.php?id=1' -D base -T utilisateurs --dump"
  info "📌 SQLmap supporte MySQL, PostgreSQL, Oracle, etc."
  echo -e "${RED}⚠️  N'utilise SQLmap que sur des sites dont tu as l'autorisation !${RESET}"
  pause
}

install_xsstrike() {
  header
  echo -e "${BOLD}🎯 XSSTRIKE – Détection XSS${RESET}"
  echo "🔹 XSStrike détecte les vulnérabilités Cross-Site Scripting."
  echo "🔹 Utilise des techniques avancées \(fuzzing, mutation\)."
  echo "🔹 Fournit des payloads prêts à l'emploi."
  echo ""
  read -p "Installer XSStrike ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation XSStrike"
  git clone https://github.com/s0md3v/XSStrike ~/XSStrike
  cd ~/XSStrike
  pip install -r requirements.txt
  success "XSStrike installé !"
  info "Scanner une URL : python3 xsstrike.py -u 'http://cible.com/page.php?q=test'"
  info "Scanner un paramètre : python3 xsstrike.py -u 'http://cible.com/page.php?q=test' -p q"
  info "📌 XSStrike peut contourner les filtres WAF."
  echo -e "${RED}⚠️  N'utilise XSStrike que sur des sites dont tu as l'autorisation !${RESET}"
  pause
}

install_socialfish() {
  header
  echo -e "${BOLD}📱 SOCIALFISH – Phishing avancé${RESET}"
  echo "🔹 SocialFish crée des pages de phishing pour réseaux sociaux."
  echo "🔹 Capture les identifiants en temps réel."
  echo "🔹 Supporte plus de 20 sites : Facebook, Instagram, Twitter, etc."
  echo ""
  read -p "Installer SocialFish ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation SocialFish"
  git clone https://github.com/UndeadSec/SocialFish ~/SocialFish
  cd ~/SocialFish
  pip install -r requirements.txt
  success "SocialFish installé !"
  info "Lancer SocialFish : python3 SocialFish.py"
  info "Choisir un template \(ex: Facebook\)"
  info "Démarrer le serveur sur le port 5000"
  info "📌 SocialFish inclut ngrok pour exposer le lien."
  echo -e "${RED}⚠️  Le phishing est ILLÉGAL sans consentement explicite !${RESET}"
  pause
}

install_theharvester() {
  header
  echo -e "${BOLD}🦅 THEHARVESTER – Reconnaissance OSINT${RESET}"
  echo "🔹 TheHarvester collecte des emails, sous-domaines, etc."
  echo "🔹 Utilise des moteurs de recherche comme Google, Bing, Shodan."
  echo "🔹 Idéal pour l'audit de sécurité d'une entreprise."
  echo ""
  read -p "Installer TheHarvester ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation TheHarvester"
  git clone https://github.com/laramies/theHarvester ~/theHarvester
  cd ~/theHarvester
  pip install -r requirements.txt
  success "TheHarvester installé !"
  info "Recherche emails : python3 theHarvester.py -d cible.com -b google"
  info "Recherche sous-domaines : python3 theHarvester.py -d cible.com -b bing"
  info "📌 TheHarvester peut utiliser Shodan pour des informations techniques."
  pause
}

install_sublist3r() {
  header
  echo -e "${BOLD}🔍 SUBLIST3R – Énumération de sous-domaines${RESET}"
  echo "🔹 Sublist3r trouve les sous-domaines d'un domaine cible."
  echo "🔹 Utilise des moteurs de recherche comme Google, Yahoo, Bing."
  echo "🔹 Idéal pour l'audit de surface d'attaque."
  echo ""
  read -p "Installer Sublist3r ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Sublist3r"
  git clone https://github.com/aboul3la/Sublist3r ~/Sublist3r
  cd ~/Sublist3r
  pip install -r requirements.txt
  success "Sublist3r installé !"
  info "Scanner un domaine : python3 sublist3r.py -d cible.com"
  info "Scanner avec bruteforce : python3 sublist3r.py -d cible.com -b"
  info "Sauvegarder les résultats : python3 sublist3r.py -d cible.com -o subdomaines.txt"
  info "📌 Sublist3r peut être utilisé comme module dans d'autres scripts."
  pause
}

install_sherlock() {
  header
  echo -e "${BOLD}🚀 SHERLOCK – Recherche d'usernames${RESET}"
  echo "🔹 Sherlock cherche un username sur +300 réseaux sociaux."
  echo "🔹 Utile pour l'OSINT et la traçabilité numérique."
  echo "🔹 Rapide, léger, et facile à utiliser."
  echo ""
  read -p "Installer Sherlock ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Sherlock"
  git clone https://github.com/sherlock-project/sherlock ~/sherlock
  cd ~/sherlock
  pip install -r requirements.txt
  success "Sherlock installé !"
  info "Chercher un username : python3 sherlock.py legacy_senegal"
  info "Chercher plusieurs usernames : python3 sherlock.py user1 user2 user3"
  info "📌 Sherlock est parfait pour les enquêtes OSINT."
  pause
}

install_photon() {
  header
  echo -e "${BOLD}🕸️  PHOTON – Scraping OSINT${RESET}"
  echo "🔹 Photon est un crawler/ scraper pour la collecte d'informations."
  echo "🔹 Extrait emails, liens, js, sous-domaines, etc."
  echo "🔹 Idéal pour la phase de reconnaissance."
  echo ""
  read -p "Installer Photon ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Photon"
  git clone https://github.com/s0md3v/Photon ~/Photon
  cd ~/Photon
  pip install -r requirements.txt
  success "Photon installé !"
  info "Scraping d'un site : python3 photon.py -u http://cible.com"
  info "Scraping avec niveau 3 \(profond\) : python3 photon.py -u http://cible.com -l 3"
  info "Sauvegarder les résultats : python3 photon.py -u http://cible.com -d data"
  info "📌 Photon génère un rapport complet en HTML."
  pause
}

install_reconng() {
  header
  echo -e "${BOLD}🔄 RECON-NG – Framework OSINT${RESET}"
  echo "🔹 Recon-ng est un framework modulaire pour l'OSINT."
  echo "🔹 Semblable à Metasploit mais orienté collecte d'informations."
  echo "🔹 Contient des modules pour Shodan, Twitter, LinkedIn, etc."
  echo ""
  read -p "Installer Recon-ng ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Recon-ng"
  git clone https://github.com/lanmaster53/recon-ng ~/recon-ng
  cd ~/recon-ng
  pip install -r requirements.txt
  success "Recon-ng installé !"
  info "Lancer Recon-ng : ./recon-ng"
  info "Utiliser un module : marketplace search google"
  info "Installer un module : marketplace install google"
  info "📌 Recon-ng nécessite souvent des clés API pour certains modules."
  pause
}

install_bettercap() {
  header
  echo -e "${BOLD}📡 BETTERCAP – MITM \(Man In The Middle\)${RESET}"
  echo "🔹 Bettercap est un outil puissant pour l'attaque MITM."
  echo "🔹 Permet le sniffing, l'empoisonnement ARP, le spoofing DNS."
  echo "🔹 Supporte le bluetooth, Wi-Fi, et plus."
  echo ""
  read -p "Installer Bettercap ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Bettercap"
  pkg install -y bettercap
  success "Bettercap installé !"
  info "Lancer Bettercap : sudo bettercap"
  info "Empoisonnement ARP : set arp.spoof.targets 192.168.1.10; arp.spoof on"
  info "Sniffer HTTP : set http.proxy.script http.proxy.js; http.proxy on"
  info "📌 Bettercap est très utilisé pour les tests de pénétration réseau."
  echo -e "${RED}⚠️  N'utilise Bettercap que sur TES propres réseaux !${RESET}"
  pause
}

install_evilginx() {
  header
  echo -e "${BOLD}🧪 EVILGINX – Phishing avancé \(2FA bypass\)${RESET}"
  echo "🔹 Evilginx est un framework de phishing qui contourne le 2FA."
  echo "🔹 Agit comme un proxy inverse entre la cible et le site légitime."
  echo "🔹 Capture tokens de session en temps réel."
  echo ""
  read -p "Installer Evilginx ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation des dépendances"
  pkg install -y golang git
  step 2 "Clonage et compilation Evilginx"
  git clone https://github.com/kgretzky/evilginx2 ~/evilginx2
  cd ~/evilginx2
  make
  success "Evilginx compilé !"
  info "Lancer Evilginx : ./evilginx"
  info "Créer un phishlet : create phishlet"
  info "Démarrer le serveur : start"
  info "📌 Evilginx nécessite un domaine et un certificat SSL."
  echo -e "${RED}⚠️  Le phishing avec Evilginx est ILLÉGAL sans autorisation explicite !${RESET}"
  pause
}

install_john_advanced() {
  header
  echo -e "${BOLD}🔓 JOHN THE RIPPER – Version améliorée${RESET}"
  echo "🔹 John \(JTR\) est le célèbre cracker de mots de passe."
  echo "🔹 Supporte +100 types de hash \(MD5, SHA, bcrypt, etc.\)"
  echo "🔹 Version améliorée avec des modes d'attaque supplémentaires."
  echo ""
  read -p "Installer John the Ripper \(avancé\) ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation John"
  pkg install -y john
  success "John installé !"
  info "Cracker un hash : john --wordlist=/usr/share/wordlists/rockyou.txt hash.txt"
  info "Mode incrémental : john -i:all hash.txt"
  info "Voir les résultats : john --show hash.txt"
  info "📌 Utilise des dictionnaires comme rockyou.txt pour plus d'efficacité."
  echo -e "${RED}⚠️  N'utilise John que sur TES propres hashs !${RESET}"
  pause
}

install_nikto() {
  header
  echo -e "${BOLD}🛠️  NIKTO – Scan de serveurs web${RESET}"
  echo "🔹 Nikto est un scanner de vulnérabilités pour serveurs web."
  echo "🔹 Détecte les versions obsolètes, les fichiers sensibles."
  echo "🔹 Supporte HTTP/HTTPS, proxy, authentification."
  echo ""
  read -p "Installer Nikto ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Nikto"
  pkg install -y nikto
  success "Nikto installé !"
  info "Scanner un site : nikto -h http://cible.com"
  info "Scanner avec SSL : nikto -h https://cible.com -ssl"
  info "Scan personnalisé : nikto -h http://cible.com -Tuning 4 5 6"
  info "📌 Nikto génère des rapports en HTML ou XML."
  echo -e "${RED}⚠️  N'utilise Nikto que sur des sites dont tu as l'autorisation !${RESET}"
  pause
}

install_wpscan() {
  header
  echo -e "${BOLD}🧹 WPScan – Scanner WordPress${RESET}"
  echo "🔹 WPScan est spécialisé dans les vulnérabilités WordPress."
  echo "🔹 Détecte les thèmes, plugins, versions obsolètes."
  echo "🔹 Utilise une base de données de vulnérabilités \(WPScan DB\)."
  echo ""
  read -p "Installer WPScan ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation WPScan"
  pkg install -y ruby git
  git clone https://github.com/wpscanteam/wpscan ~/wpscan
  cd ~/wpscan
  gem install bundler
  bundle install
  success "WPScan installé !"
  info "Scanner un site : ./wpscan --url http://cible.com"
  info "Scanner avec dictionnaire : ./wpscan --url http://cible.com -U users.txt -P pass.txt"
  info "Mettre à jour la DB : ./wpscan --update"
  info "📌 WPScan nécessite parfois une clé API \(gratuite\) pour plus de détails."
  pause
}

install_dirb() {
  header
  echo -e "${BOLD}🌐 DIRB – Brute-force de répertoires${RESET}"
  echo "🔹 Dirb teste des milliers de répertoires sur un serveur web."
  echo "🔹 Détecte les dossiers cachés, fichiers sensibles."
  echo "🔹 Utilise des dictionnaires standards ou personnalisés."
  echo ""
  read -p "Installer Dirb ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Dirb"
  pkg install -y dirb
  success "Dirb installé !"
  info "Brute-force : dirb http://cible.com"
  info "Utiliser un dictionnaire : dirb http://cible.com /usr/share/wordlists/dirb/common.txt"
  info "📌 Dirb est parfait pour découvrir des points d'entrée non documentés."
  echo -e "${RED}⚠️  N'utilise Dirb que sur des sites dont tu as l'autorisation !${RESET}"
  pause
}

install_gobuster() {
  header
  echo -e "${BOLD}🔍 GOBUSTER – Brute-force de répertoires \(rapide\)${RESET}"
  echo "🔹 Gobuster est plus rapide que Dirb car multi-threadé."
  echo "🔹 Supporte DNS, sous-domaines, Vhost, et répertoires."
  echo "🔹 Écrit en Go, donc très performant."
  echo ""
  read -p "Installer Gobuster ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Gobuster"
  pkg install -y go
  go get -u github.com/OJ/gobuster
  success "Gobuster installé !"
  info "Brute-force répertoires : gobuster dir -u http://cible.com -w /usr/share/wordlists/dirb/common.txt"
  info "Brute-force DNS : gobuster dns -d cible.com -w /usr/share/wordlists/dirb/common.txt"
  info "📌 Gobuster peut utiliser des extensions comme .php, .html, etc."
  pause
}

install_legion() {
  header
  echo -e "${BOLD}🧬 LEGION – Scan automatisé${RESET}"
  echo "🔹 Legion est un scanner de vulnérabilités automatisé."
  echo "🔹 Combine Nmap, Nikto, Dirb, et d'autres outils."
  echo "🔹 Idéal pour les débutants en pentest."
  echo ""
  read -p "Installer Legion ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Legion"
  git clone https://github.com/GoVanguard/legion ~/legion
  cd ~/legion
  pip install -r requirements.txt
  success "Legion installé !"
  info "Lancer Legion : python3 legion.py"
  info "Cibler une IP ou domaine : ajouter la cible dans l'interface"
  info "📌 Legion génère un rapport complet avec toutes les vulnérabilités trouvées."
  pause
}

install_exiftool() {
  header
  echo -e "${BOLD}🚀 EXIFTOOL – Métadonnées${RESET}"
  echo "🔹 ExifTool lit, écrit et modifie les métadonnées des fichiers."
  echo "🔹 Supporte images, vidéos, PDF, documents, etc."
  echo "🔹 Utile pour l'OSINT \(localisation GPS, appareil, etc.\)"
  echo ""
  read -p "Installer ExifTool ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation ExifTool"
  pkg install -y exiftool
  success "ExifTool installé !"
  info "Lire métadonnées : exiftool image.jpg"
  info "Supprimer métadonnées : exiftool -all= image.jpg"
  info "Extraire les coordonnées GPS : exiftool -c '%+.6f' image.jpg"
  info "📌 ExifTool est le standard pour l'analyse de métadonnées."
  pause
}

install_steghide() {
  header
  echo -e "${BOLD}🔐 STEGHIDE – Stéganographie${RESET}"
  echo "🔹 Steghide cache des fichiers dans des images ou audio."
  echo "🔹 Utilise un mot de passe pour chiffrer les données cachées."
  echo "🔹 Idéal pour la transmission discrète d'informations."
  echo ""
  read -p "Installer Steghide ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Steghide"
  pkg install -y steghide
  success "Steghide installé !"
  info "Cacher un fichier : steghide embed -cf image.jpg -ef secret.txt"
  info "Extraire un fichier : steghide extract -sf image.jpg"
  info "📌 Steghide supporte les formats JPEG, BMP, WAV, AU."
  pause
}

install_maskphish() {
  header
  echo -e "${BOLD}🎭 MASHPHISH – URL masquée${RESET}"
  echo "🔹 MaskPhish masque les liens de phishing avec des URL légitimes."
  echo "🔹 Utilise des services de raccourcissement et de redirection."
  echo "🔹 Idéal pour les campagnes de phishing social."
  echo ""
  read -p "Installer MaskPhish ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation MaskPhish"
  git clone https://github.com/htr-tech/MaskPhish ~/MaskPhish
  cd ~/MaskPhish
  chmod +x maskphish.sh
  success "MaskPhish installé !"
  info "Lancer MaskPhish : ./maskphish.sh"
  info "Entrer le lien de phishing et le lien légitime de masque"
  info "📌 MaskPhish utilise des services comme Bitly ou TinyURL."
  echo -e "${RED}⚠️  Le phishing est ILLÉGAL sans consentement explicite !${RESET}"
  pause
}

install_zphisher() {
  header
  echo -e "${BOLD}📱 ZPHISHER – Phishing local${RESET}"
  echo "🔹 Zphisher crée des pages de phishing pour +30 sites."
  echo "🔹 Facile à utiliser, avec ngrok intégré."
  echo "🔹 Capture les identifiants en temps réel."
  echo ""
  read -p "Installer Zphisher ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation Zphisher"
  git clone https://github.com/htr-tech/zphisher ~/zphisher
  cd ~/zphisher
  chmod +x zphisher.sh
  success "Zphisher installé !"
  info "Lancer Zphisher : ./zphisher.sh"
  info "Choisir un template \(ex: Facebook, Instagram, etc.\)"
  info "📌 Zphisher inclut des tunnels comme Ngrok, Cloudflare, etc."
  echo -e "${RED}⚠️  Le phishing est ILLÉGAL sans consentement explicite !${RESET}"
  pause
}

install_osintframework() {
  header
  echo -e "${BOLD}🧠 OSINT FRAMEWORK${RESET}"
  echo "🔹 OSINT Framework est un outil web de collecte d'informations."
  echo "🔹 Rassemble des dizaines d'outils de recherche par catégorie."
  echo "🔹 Idéal pour les enquêtes approfondies."
  echo ""
  read -p "Installer OSINT Framework \(interface CLI\) ? (o/n) : " confirm
  if [ "$confirm" != "o" ]; then return; fi
  step 1 "Installation OSINT Framework"
  git clone https://github.com/lockfale/OSINT-Framework ~/OSINT-Framework
  cd ~/OSINT-Framework
  echo "OSINT Framework installé sous forme de site web statique."
  success "OSINT Framework installé !"
  info "Ouvrir le framework : cd ~/OSINT-Framework && python3 -m http.server 8080"
  info "Accès local : http://localhost:8080"
  info "📌 OSINT Framework est en réalité un site web à ouvrir dans un navigateur."
  pause
}

install_everything() {
  header
  echo -e "${BOLD}⚡ INSTALLATION COMPLÈTE${RESET}"
  info "Cette installation prend 30-60 minutes."
  pause
  pkg update -y && pkg upgrade -y
  pkg install -y git python nodejs npm curl wget zsh neovim ffmpeg sqlite openssh htop neofetch tree zip unzip nmap openssl hydra aircrack-ng tshark hashcat sqlmap nikto dirb go exiftool steghide
  pip install requests flask fastapi numpy pandas scikit-learn beautifulsoup4 yt-dlp
  npm install -g pm2 nodemon
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
  mkdir -p ~/.termux
  wget -q -O ~/.termux/font.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
  cat > ~/.zshrc << 'EOF'
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
alias ll='ls -la'
alias cls='clear'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias py='python3'
alias update='pkg update && pkg upgrade -y'
alias ubuntu='proot-distro login ubuntu'
alias myip='curl ifconfig.me'
alias serve='python3 -m http.server 8080'
alias reload='source ~/.zshrc'
EOF
  termux-reload-settings
  success "INSTALLATION COMPLÈTE ! 🎉"
  info "Lance : source ~/.zshrc"
  info "Puis  : p10k configure"
  pause
}

# ============================================================
#   BOUCLE PRINCIPALE
# ============================================================
while true; do
  # On stocke le choix dans la variable GLOBALE
  show_menu
  case $MENU_CHOIX in
    1)  install_style ;;
    2)  install_ohmyzsh ;;
    3)  install_p10k ;;
    4)  install_plugins ;;
    5)  install_extrakeys ;;
    6)  install_python ;;
    7)  install_node ;;
    8)  install_pm2 ;;
    9)  install_git ;;
    10) install_neovim ;;
    11) install_essentials ;;
    12) install_ffmpeg ;;
    13) install_ytdlp ;;
    14) install_sqlite ;;
    15) install_mongodb ;;
    16) install_postgresql ;;
    17) install_redis ;;
    18) install_ngrok ;;
    19) install_ssh ;;
    20) install_apache ;;
    21) install_nginx ;;
    22) install_termuxapi ;;
    23) install_ubuntu ;;
    24) install_alpine ;;
    25) install_monitor ;;
    26) install_ai_python ;;
    27) install_ollama ;;
    28) install_scraping ;;
    29) install_whatsapp_bot ;;
    30) install_cron ;;
    31) install_kali ;;
    32) install_nethunter ;;
    33) install_metasploit ;;
    34) install_hydra ;;
    35) install_aircrack ;;
    36) install_wireshark ;;
    37) install_hashcat ;;
    38) install_sqlmap ;;
    39) install_xsstrike ;;
    40) install_socialfish ;;
    41) install_theharvester ;;
    42) install_sublist3r ;;
    43) install_sherlock ;;
    44) install_photon ;;
    45) install_reconng ;;
    46) install_bettercap ;;
    47) install_evilginx ;;
    48) install_john_advanced ;;
    49) install_nikto ;;
    50) install_wpscan ;;
    51) install_dirb ;;
    52) install_gobuster ;;
    53) install_legion ;;
    54) install_exiftool ;;
    55) install_steghide ;;
    56) install_maskphish ;;
    57) install_zphisher ;;
    58) install_osintframework ;;
    59) install_alias ;;
    60) do_backup ;;
    61) do_restore ;;
    62) clean_cache ;;
    63) update_all ;;
    64) do_reset ;;
    65) install_everything ;;
    0)
      header
      echo -e "${PURPLE}  MoiseTech 🇸🇳${RESET}"
      echo -e "${CYAN}  github.com/senemoussa777000-blip/moisetech-termux-setup${RESET}"
      echo -e "${RED}  ⚠️  Utilise tous les outils de façon éthique et légale !${RESET}"
      echo ""
      exit 0
      ;;
    *)
      error "Choix invalide. Entre un nombre entre 0 et 65."
      pause
      ;;
  esac
done
