#!/bin/bash

# List of extensions to install (alphabetically sorted)
extensions=(
    "aaron-bond.better-comments"
    "bradlc.vscode-tailwindcss"
    "dbaeumer.vscode-eslint"
    "eamodio.gitlens"
    "esbenp.prettier-vscode"
    "mechatroner.rainbow-csv"
    "monokai.theme-monokai-pro-vscode"
    "orta.vscode-jest"
    "tomoki1207.pdf"
    "vercel.turbo-vsc"
    "wix.vscode-import-cost"
)

# Install each extension
for extension in "${extensions[@]}"; do
    echo "Installing $extension..."
    cursor --install-extension "$extension"
done

echo "All extensions installed!" 