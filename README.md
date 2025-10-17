# Arkena

![CI](https://github.com/ayoub-sourrakh/arkena/actions/workflows/ci.yml/badge.svg)

Arkena est une application **Ruby on Rails 7 full-stack** (Hotwire : Turbo + Stimulus), déployée dans un environnement **Docker** avec une base **PostgreSQL**.  
Elle met en œuvre une architecture moderne, maintenable et orientée production, avec intégration complète des outils de qualité, sécurité et CI/CD.

---

## ⚙️ Stack Technique

- **Ruby** 3.3.x  
- **Rails** 7.2.x  
- **PostgreSQL** 16  
- **Hotwire** (Turbo / Stimulus)  
- **Devise** pour l’authentification  
- **RSpec** pour les tests  
- **Rubocop** + **Brakeman** pour la qualité et la sécurité  
- **Docker Compose** pour la conteneurisation

---

## 🐳 Environnement Docker

### Lancer le projet
```bash
docker-compose up --build
```

### Accès à l’application
http://localhost:3000

### Accès à la base
- Host : `db`
- Port : `5432`
- User : `postgres`
- Password : `password`

---

## 🔐 Authentification (Devise)

L’application utilise **Devise** pour la gestion des utilisateurs (sign up / sign in).  
Le modèle `User` est configuré avec migrations, tests et vues intégrées.

---

## 🧪 Tests & Qualité

### Lancer manuellement
```bash
bundle exec rubocop
bundle exec brakeman
bundle exec rspec
```

### Hooks Git
- **pre-commit** : exécute Rubocop + Brakeman avant chaque commit  
- **commit-msg** : vérifie le format du message (`type: message`)

### Pipelines GitHub Actions

| Job        | Description |
|-------------|-------------|
| `scan_ruby` | Analyse de sécurité Rails (Brakeman) |
| `scan_js`   | Audit des dépendances JavaScript |
| `lint`      | Analyse de style (Rubocop) |
| `test`      | Exécution des tests Rails sur PostgreSQL |

---

## 🧱 Structure du projet

```
.
├── app/
│   ├── controllers/
│   ├── models/
│   ├── views/
│   └── helpers/
├── config/
├── db/
├── spec/
├── test/
└── Dockerfile / docker-compose.yml
```

---

## 🚀 Étapes à venir

1. **Frontend dynamique**
   - Intégrer Stimulus pour les interactions temps réel
   - Utiliser Turbo Streams pour les mises à jour live

2. **Refactor Auth**
   - Gestion des rôles et permissions (admin, user, etc.)
   - Intégration JWT pour API externe

3. **CI/CD avancée**
   - Job `deploy` : build + push Docker
   - Déploiement sur Render / Fly.io / Heroku

4. **Sécurité & Qualité**
   - Intégration CodeQL
   - Couverture RSpec > 80 %

5. **Documentation**
   - Génération automatique (RDoc / Yard)
   - Wiki technique et fonctionnel

---

## 👤 Auteur

**Ayoub Sourrakh**  
Software Engineer — Ruby on Rails Software Engineer
📍 Paris / Île-de-France  
🔗 [LinkedIn](https://www.linkedin.com/in/ayoub-sourrakh)
