#!/bin/bash

# Ajoute l'alias pour kubectl dans .bashrc s'il n'est pas déjà présent
if ! grep -q "alias k=kubectl" ~/.bashrc; then
    echo "alias k=kubectl" >> ~/.bashrc
    echo "Ajout de l'alias k=kubectl dans ~/.bashrc"
else
    echo "L'alias k=kubectl est déjà présent dans ~/.bashrc"
fi

# Ajoute la complétion kubectl si elle n'est pas déjà présente
if ! grep -q "kubectl completion bash" ~/.bashrc; then
    echo "source <(kubectl completion bash)" >> ~/.bashrc
    echo "Ajout de la complétion kubectl dans ~/.bashrc"
fi

# Ajoute la complétion pour l'alias k si elle n'est pas déjà présente
if ! grep -q "complete -F __start_kubectl k" ~/.bashrc; then
    echo "complete -F __start_kubectl k" >> ~/.bashrc
    echo "Ajout de la complétion pour l'alias k dans ~/.bashrc"
fi

# Recharge le bashrc
echo "Rechargement de ~/.bashrc..."
source ~/.bashrc

echo "Configuration terminée ! Essaie 'k get pods' avec la touche Tab pour tester la complétion."