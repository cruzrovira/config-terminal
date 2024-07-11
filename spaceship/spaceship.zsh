# Configuración de Spaceship Prompt
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js version
  ruby          # Ruby version
  python        # Python version
  line_sep      # Line break
  char          # Prompt character
)

# Configuración específica para el módulo de directorios
SPACESHIP_DIR_TRUNC=1  # Muestra solo el nombre del directorio actual
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_SHOW=always  # Siempre mostrar el directorio
SPACESHIP_DIR_SUFFIX=" "

# Configuración para añadir espacios entre las secciones
SPACESHIP_USER_SUFFIX=" "
SPACESHIP_HOST_SUFFIX=" "
SPACESHIP_GIT_SUFFIX=" "
SPACESHIP_PACKAGE_SUFFIX=" "
SPACESHIP_NODE_SUFFIX=" "
SPACESHIP_RUBY_SUFFIX=" "
SPACESHIP_PYTHON_SUFFIX=" "

# Desactivar el módulo de Node.js
SPACESHIP_NODE_SHOW=false

# Cambia el símbolo del prompt
SPACESHIP_CHAR_SYMBOL="> "
SPACESHIP_CHAR_SUFFIX=" "
