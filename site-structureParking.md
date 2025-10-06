# Plan du Site - Structure des URLs

## 🏠 Pages Publiques (Accessibles sans connexion)

| URL | Méthode HTTP | Description |
| :--- | :--- | :--- |
| `/` | `GET` | Page d'accueil / Redirection vers `/login si non connecté vers`/dashboard connecté |
| `/login` | `GET` | Formulaire de connexion pour utilisateurs et administrateurs |
| `/login` | `POST` | Traitement de la tentative de connexion avec vérification des identifiants|
| `/forgot-password` | `GET` | Formulaire de demande de réinitialisation de mot de passe |
| `/forgot-password` | `POST` | Traitement de la demande (envoi d'un email de réinitialisation) |
| `/reset-password?token=xxx` | `GET` | Formulaire de saisie du nouveau mot de passe (avec token de sécurité) |
| `/reset-password` | `POST` | Validation et enregitre du nouveau mot de passe |

## 👤 Espace Membre (Nécessite une connexion user)

| URL | Méthode HTTP | Description |
| :--- | :--- | :--- |
| `/user/dashboard` | `GET` | Tableau de bord utilisateur avec résumé des informations |
|`/user/my-parking` | `GET` | Visualisation de la place de Parking acttuellement attribuée |
| `/user/history` | `GET` | Page d'affichage de l'historique des réservations |
| `/user/reservation` | `GET`| Formulaire de demande de réservation de place|
| `/user/request-spot` | `POST` | **Endpoint API** : Traite la demande de réservation d'une place |
| `/user/cancel-reservation` | `POST` | **Endpoint API** : Libère la place active avant son expiration |
| `/user/waiting-position` | `GET` | Affichage du rang dns la file d'attente |
| `/user/profile` | `GET` | Formulaire de modification du mot de passe |
| `/user/profile` | `POST` | Traitement de la modification du mot de passe |
| `/logout` | `GET` | Déconnexion de l'utilisateur |

## ⚙️ Espace Administrateur (Nécessite un compte admin)

| URL | Méthode HTTP | Description |
| :--- | :--- | :--- |
| `/admin/dashboard` | `GET` | Tableau de bord admin (statistiques, actions rapides) |
| `/admin/users` | `GET` | Liste de tous les utilisateurs |
| `/admin/users/new` | `GET` | Formulaire de création d'un nouvel utilisateur |
| `/admin/users/new` | `POST` | Traitement de la création |
| `/admin/users/{id}/edit` | `GET` | Formulaire de modification d'un utilisateur |
| `/admin/users/{id}/edit` | `POST` | Traitement de la modification |
| `/admin/users/{id}/delete` | `POST` | **Endpoint API** : Désactivation d'un compte |
| `/admin/parking-spots` | `GET` | Liste et gestion de toutes les places de parking |
| `/admin/parking-spots/new` | `POST` | **Endpoint API** : Ajout d'une nouvelle place |
| `/admin/parking-spots/{id}/delete` | `POST` | **Endpoint API** : Suppression d'une place |
| `/admin/waiting-list` | `GET` | Affichage et gestion de la file d'attente |
| `/admin/waiting-list/{id}/move-up` | `POST` | **Endpoint API** : Monte un utilisateur d'une position |
| `/admin/waiting-list/{id}/move-down` | `POST` | **Endpoint API** : Descend un utilisateur d'une position |
| `/admin/waiting-list/{id}/remove` | `POST` | **Endpoint API** : Retire un utilisateur de la file |
| `/admin/history` | `GET` | Consultation de l'historique complet des réservations |

## 🔌 Endpoints API (Retournent du JSON)

Ces URLs sont destinées à être appelées en AJAX depuis mon frontend.

| URL | Méthode HTTP | Description |
| :--- | :--- | :--- |
| `/api/user/spot-status` | `GET` | Renvoie le statut de l'utilisateur (place active, position en file, etc.) |

| `/api/admin/stats` | `GET` | Renvoie les statistiques pour le dashboard admin |

