# brief17_appli_web_chat_django

Modalités pédagogiques
Brief individuel

Durée totale : 3,5 jours

​

1\ Lecture du Brief en commun

Durée : 15min

​

2\ Création de l'environnement virtuel et du repo Git

Durée : 15min

​

3\ Création du container Docker

Durée : 30min

​

4\ Coder l'application de chat
Durée : 2 jours

​

5\ Créer le système d'authentification (backend et frontend) et la redirection automatique des utilisateurs non authentifiés vers la page d'authentification

Durée : 1jour

​

6\ Dockeriser l'application

L'application de doit plus s'exécuter avec le serveur de développement de Django (python manage.py runserver), mais directement avec le serveur Daphnee.

​

[Optionnel] 7\ Créer deux serveurs, dans deux conteneurs distincts. Le premier fonctionnera avec Gunicorn pour gérer le srequêtes HTTP. Le second fonctionnera avec Daphnee pour gérer les connexions websocket. Créer un reverse proxy avec Nginx pour orienter les requêtes vers le bon serveur.