#!/bin/bash

# List of extensions to install
extensions=(
    "esbenp.prettier-vscode"
    "aaron-bond.better-comments"
    "mechatroner.rainbow-csv"
    "wix.vscode-import-cost"
    "monokai.theme-monokai-pro-vscode"
    "tomoki1207.pdf"
    "dbaeumer.vscode-eslint"
    "vercel.turbo-vsc"
    "orta.vscode-jest"
    "bradlc.vscode-tailwindcss"
    "eamodio.gitlens"
    "msjsdiag.vscode-react-native"
)

# Install each extension
for extension in "${extensions[@]}"; do
    echo "Installing $extension..."
    cursor --install-extension "$extension"
done

echo "All extensions installed!" 