
FROM python:3.12-slim

ENV PYTHONUNBUFFERED 1

# Créer le répertoire de travail
WORKDIR /app
#ENV PYTHONPATH="${PYTHONPATH}:/app:/app/mysite"

# Copier les fichiers
COPY . /app
# Installer les dépendances
RUN  pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR /app/mysite

ENV PYTHONPATH="/app:$PYTHONPATH"

# Créer l'utilisateur daphne
RUN adduser --disabled-password --gecos "" daphne

# Changer les permissions pour que daphne puisse lire les fichiers
RUN chown -R daphne:daphne /app

EXPOSE 8000

USER daphne

# Commande par défaut
CMD ["daphne", "-b", "0.0.0.0", "-p", "8000", "mysite.asgi:application"]
