FROM ruby:3.3

# Installe dépendances système
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Crée un utilisateur non-root avec même UID/GID que ton utilisateur WSL
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID appuser && useradd -m -u $UID -g $GID appuser

WORKDIR /app

# Copie Gemfile et installe les gems
COPY Gemfile* ./
RUN bundle install

# Copie le reste du projet
COPY . .

# Change le propriétaire des fichiers
RUN chown -R appuser:appuser /app

# Passe sur l'utilisateur non-root
USER appuser

EXPOSE 3000
CMD ["bin/rails", "server", "-b", "0.0.0.0"]
