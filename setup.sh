#!/bin/bash

# ============================================================
#   MoiseTech Termux Ultimate Setup v3.0
#   by Legacy — Le jeune Sénégalais 🇸🇳
#   github.com/senemoussa777000-blip/moisetech-termux-setup
# ============================================================

clear
echo "🔧 Initialisation du système en cours..."
sleep 1
pkg install -y ncurses-utils > /dev/null 2>&1
export TERM=xterm-256color
echo "✅ Initialisation terminée."
echo ""

GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLD='\033[1m'
RESET='\033[0m'

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
  echo -e "${CYAN}         Termux Ultimate Setup v3.0 — by Legacy${RESET}"
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
  echo -e "${PURPLE}━━━ 🔒 CYBERSÉCURITÉ ÉTHIQUE ━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo "  31) 🛡️  Nmap (scan réseau)"
  echo "  32) 🔐 OpenSSL (chiffrement)"
  echo "  33) 🌐 Netcat (diagnostic réseau)"
  echo "  34) 📡 TCPDump (analyse trafic)"
  echo "  35) 🔑 John the Ripper (test mots de passe)"
  echo ""
  echo -e "${PURPLE}━━━ 💾 SAUVEGARDE & OUTILS ━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo "  36) 🔗 Alias utiles"
  echo "  37) 💾 Backup configuration"
  echo "  38) 🔄 Restaurer backup"
  echo "  39) 🧹 Nettoyer le cache"
  echo "  40) ⚡ Tout mettre à jour"
  echo "  41) 🔄 Reset complet Termux"
  echo "  42) ⚡ TOUT installer d'un coup"
  echo "  0)  ❌ Quitter"
  echo ""
  echo -e "${PURPLE}============================================================${RESET}"
  read -p "Ton choix [0-42]: " choix
}

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

install_nmap() {
  header
  echo -e "${BOLD}🛡️  NMAP — Scanner réseau${RESET}"
  pause
  step 1 "Installation Nmap"
  pkg install -y nmap
  success "Nmap installé"
  info "Scanner ton réseau local :"
  info "  nmap 192.168.1.0/24"
  info "Scanner un hôte précis :"
  info "  nmap -sV 192.168.1.1"
  info "Scan rapide :"
  info "  nmap -F 192.168.1.1"
  echo ""
  echo -e "${RED}⚠️  Utilise Nmap UNIQUEMENT sur TON propre réseau !${RESET}"
  pause
}

install_openssl() {
  header
  echo -e "${BOLD}🔐 OPENSSL — Chiffrement${RESET}"
  pause
  step 1 "Installation OpenSSL"
  pkg install -y openssl
  success "OpenSSL installé"
  info "Générer un mot de passe sécurisé :"
  info "  openssl rand -base64 32"
  info "Chiffrer un fichier :"
  info "  openssl enc -aes-256-cbc -in fichier -out fichier.enc"
  info "Déchiffrer :"
  info "  openssl enc -d -aes-256-cbc -in fichier.enc -out fichier"
  info "Générer une clé RSA :"
  info "  openssl genrsa -out cle.pem 2048"
  pause
}

install_netcat() {
  header
  echo -e "${BOLD}🌐 NETCAT — Diagnostic réseau${RESET}"
  pause
  step 1 "Installation Netcat"
  pkg install -y netcat-openbsd
  success "Netcat installé"
  info "Tester un port :"
  info "  nc -zv 192.168.1.1 80"
  info "Écouter sur un port :"
  info "  nc -l 8080"
  info "Transférer un fichier :"
  info "  Émetteur  : nc -l 9999 < fichier.txt"
  info "  Receveur  : nc IP_EMETTEUR 9999 > fichier.txt"
  echo ""
  echo -e "${RED}⚠️  Utilise Netcat UNIQUEMENT sur TON réseau !${RESET}"
  pause
}

install_tcpdump() {
  header
  echo -e "${BOLD}📡 TCPDUMP — Analyse de trafic${RESET}"
  pause
  step 1 "Installation TCPDump"
  pkg install -y tcpdump
  success "TCPDump installé"
  info "Capturer tout le trafic :"
  info "  tcpdump -i any"
  info "Filtrer par port :"
  info "  tcpdump port 80"
  info "Sauvegarder la capture :"
  info "  tcpdump -i any -w capture.pcap"
  info "Lire une capture :"
  info "  tcpdump -r capture.pcap"
  echo ""
  echo -e "${RED}⚠️  Utilise TCPDump UNIQUEMENT sur TON réseau !${RESET}"
  pause
}

install_john() {
  header
  echo -e "${BOLD}🔑 JOHN THE RIPPER — Test de mots de passe${RESET}"
  pause
  step 1 "Installation John"
  pkg install -y john
  success "John the Ripper installé"
  info "Tester un hash :"
  info "  john --wordlist=/data/data/com.termux/files/usr/share/wordlists/rockyou.txt hash.txt"
  info "Voir les résultats :"
  info "  john --show hash.txt"
  info "Générer un hash MD5 pour tester :"
  info "  echo -n 'monmotdepasse' | md5sum"
  echo ""
  echo -e "${RED}⚠️  Utilise John UNIQUEMENT sur TES propres mots de passe !${RESET}"
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

install_everything() {
  header
  echo -e "${BOLD}⚡ INSTALLATION COMPLÈTE${RESET}"
  info "Cette installation prend 15-30 minutes."
  pause
  pkg update -y && pkg upgrade -y
  pkg install -y git python nodejs npm curl wget zsh neovim ffmpeg sqlite openssh htop neofetch tree zip unzip nmap openssl
  pip install requests flask fastapi numpy pandas scikit-learn beautifulsoup4 yt-dlp
  npm install -g pm2 nodemon
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  git clone https://github.com/zsh-users/zsh-autosuggestions \
    ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting \
    ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
  mkdir -p ~/.termux
  wget -q -O ~/.termux/font.ttf \
    https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
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
  show_menu
  case $choix in
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
    31) install_nmap ;;
    32) install_openssl ;;
    33) install_netcat ;;
    34) install_tcpdump ;;
    35) install_john ;;
    36) install_alias ;;
    37) do_backup ;;
    38) do_restore ;;
    39) clean_cache ;;
    40) update_all ;;
    41) do_reset ;;
    42) install_everything ;;
    0)
      header
      echo -e "${PURPLE}  MoiseTech  🇸🇳${RESET}"
      echo -e "${CYAN}  github.com/senemoussa777000-blip/moisetech-termux-setup${RESET}"
      echo -e "${RED}  ⚠️  Utilise tous les outils de façon éthique et légale !${RESET}"
      echo ""
      exit 0
      ;;
    *)
      error "Choix invalide. Entre un nombre entre 0 et 42."
      pause
      ;;
  esac
done

