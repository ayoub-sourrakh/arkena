Arkena
======

Full-stack Ruby on Rails application running entirely in Docker.

------------------------------------------------------------
Tech stack
------------------------------------------------------------
- Ruby 3.3
- Rails 7
- PostgreSQL 16
- Docker & Docker Compose

------------------------------------------------------------
Project setup
------------------------------------------------------------

1. Build images:
   docker-compose build

2. Start containers:
   docker-compose up

The app will be available at:
   http://localhost:3000

------------------------------------------------------------
Database config
------------------------------------------------------------

The PostgreSQL service runs in its own container (db).

Connection settings (config/database.yml):
   username: postgres
   password: password
   host: db

------------------------------------------------------------
Docker structure
------------------------------------------------------------

- Dockerfile          -> defines the Rails environment
- docker-compose.yml  -> orchestrates the app (web) and the DB (db)
- Volume mount (.:/app) allows live code reloading in development
- db_data volume persists database data

------------------------------------------------------------
Next steps
------------------------------------------------------------

1. Add authentication with Devise + JWT
2. Integrate Hotwire (Turbo + Stimulus)
3. Add tests and CI/CD pipeline
