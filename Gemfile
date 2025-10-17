# frozen_string_literal: true

source 'https://rubygems.org'

# --- Rails Core ---
gem 'importmap-rails'               # JS sans bundler
gem 'jbuilder'                      # JSON builder
gem 'pg', '~> 1.1'                  # PostgreSQL
gem 'puma', '>= 5.0'                # Serveur web
gem 'rails', '~> 8.0.3'
gem 'sprockets-rails'               # Asset pipeline
gem 'stimulus-rails'                # Hotwire (Stimulus)
gem 'turbo-rails'                   # Hotwire (Turbo)

# --- Authentification ---
gem 'devise', '~> 4.9'

# --- Performance & Boot ---
gem 'bootsnap', require: false
gem 'tzinfo-data', platforms: %i[windows jruby]

# --- Développement & Tests ---
group :development, :test do
  # Debug / test
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'
  gem 'rspec-rails', '~> 8.0'

  # Analyse statique & sécurité
  gem 'brakeman', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
end

# --- Développement uniquement ---
group :development do
  gem 'web-console' # Console sur erreurs
end

# --- Tests uniquement ---
group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end

gem 'rubocop-rails-omakase', '~> 1.1', require: false
