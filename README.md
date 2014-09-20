# Czyste Lasy

Aplikacja wspomagająca organizację zabaw terenowych, mających na celu sprzątanie terenów leśnych / górskich.
Implementowana podczas hackathonu [IT w Słusznej Sprawie](https://www.facebook.com/events/281593035376316/?fref=ts)

## Development

### 1. Setup aplikacji

    git clone git@github.com:tbprojects/CleanForrest.git
    cd CleanForrest
    bundle install
    cp config/database.example.yml config/database.yml          # configure access to database
    cp config/application.example.yml config/application.yml    # configure access to services
    rake db:create db:migrate db:seed

### 2. Uruchomienie aplikacji

Polecenie ```guard``` które uruchomi web serwer oraz będzie wykonywało testy automatyczne na zmienionych plikach.

## Technologie

### Apps & Libraries

* Ruby 2.1.2
* Rails 4.1.6
* SQLite
* Template Engine: Slim
* Testing Framework: RSpec, Factory Girl
* Form Builder: SimpleForm
* Authentication: Devise
