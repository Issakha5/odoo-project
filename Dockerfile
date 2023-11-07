# Utilisez l'image officielle d'Odoo 16 comme base
FROM odoo:16

# Définissez le répertoire de travail dans le conteneur
WORKDIR /

# Copiez le fichier odoo.conf
COPY config/odoo.conf /etc/odoo/odoo.conf

# Copiez le fichier requirements.txt et installez les dépendances Python
# COPY requirements.txt requirements.txt
# RUN pip3 install --no-cache-dir -r requirements.txt

# Créez le répertoire custom-addons et copiez les addons personnalisés
COPY custom-addons custom-addons

# Spécifiez les ports que le conteneur expose
EXPOSE 8069 8071

USER odoo16

# Commande pour démarrer Odoo avec le fichier de configuration personnalisé
CMD ["odoo"]

