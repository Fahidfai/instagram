#!/bin/bash
# =============================================================
# TOOL   : Instagram Security Audit Tool
# AUTHOR : @la.y.al_
# =============================================================

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' 

show_banner() {
    clear
    echo -e "${BLUE}==========================================${NC}"
    echo -e "${BLUE}      INSTAGRAM SECURITY SCANNER          ${NC}"
    echo -e "${BLUE}==========================================${NC}"
    echo -e "       Coded by: @la.y.al_"
    echo ""
}

start_audit() {
    show_banner
    read -p "Enter Target Username: " @la.y.al_
    
    wordlist="passwords.txt"

    if [[ -f "$wordlist" ]]; then
        while IFS= read -r password; do
            echo -n -e "Testing ${username} : ${password} ... "
            sleep 0.5
            
            if [[ "$password" == "123456" || "$password" == "password" ]]; then
                echo -e "${RED}[VULNERABLE]${NC}"
            else
                echo -e "${GREEN}[SECURE]${NC}"
            fi
        done < "$wordlist"
    else
        echo -e "${RED}[ERROR] passwords.txt not found.${NC}"
    fi
}

start_audit
