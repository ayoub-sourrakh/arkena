FROM ruby:3.3

# Installe les dépendances système nécessaires à Rails
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Installe Bundler (gestionnaire de gems Ruby)
RUN gem install bundler

# Définit le dossier de travail dans le conteneur
WORKDIR /app

# Copie les fichiers Gemfile et Gemfile.lock pour installer les gems
COPY Gemfile* ./
RUN bundle install

# Copie le reste du code de l’application dans le conteneur
COPY . .

# Expose le port 3000 (celui utilisé par Rails)
EXPOSE 3000

# Commande exécutée au démarrage du conteneur
CMD ["bin/rails", "server", "-b", "0.0.0.0"]
