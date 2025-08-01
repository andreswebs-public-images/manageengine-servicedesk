# shellcheck shell=sh
# shellcheck disable=SC2034

# Installer properties for ManageEngine ServiceDesk Plus

# Choose ServiceDesk Plus Edition
# Options: "Enterprise Edition", "Standard Edition", "Professional Edition"
USER_EDITION_SELECTION="Enterprise Edition"

# Installation Directory
# Specify the directory where ServiceDesk Plus will be installed
USER_INSTALL_DIR="/opt/manageengine/ServiceDesk"

# Web Server Port
# Specify the port for the ServiceDesk Plus web server
USER_WEB_PORT="8443"

# Additional properties can be added here based on the installer's capabilities
# Example: -D<name>=<value> to set specific properties
