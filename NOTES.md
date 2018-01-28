# Windows installation

## Scoop

Install PowerShell >= 3.0 . Then follow instructions from the link:

    https://www.outcoldman.com/en/archive/2014/07/20/scoop/

To avoid issues with JS on Windows remember to install nodejs:

    scoop install nodejs

## Database

    scoop install postgresql

### DB initialization

    pg_ctl init -D "D:\Dev\postgresql\baza.postgresql" -o "-E=UTF8"

### DB server start

    pg_ctl -D D:/Dev/postgresql/baza.postgresql -l D:/Dev/postgresql/pgsql.log start

### DB server stop

    pg_ctl -D D:/Dev/postgresql/baza.postgresql stop

## Build gems on Windows

To build gems on Windows when the new mingw installers are not yet available.

1. Make sure that you've got ridk installed.
1. For each [GEM] causing issues - build it with:

    gem install [GEM] --platform=ruby

e.g.

    gem install nokogiri --platform=ruby
    gem install ffi --platform=ruby

## Management

### Association with heroku remote for CLI

    heroku git:remote -a tumblr-tags

### Local run

    heroku local

## Run migration on heroku db

    heroku run rake db:migrate

## Devise: Authentication management gem

https://stackoverflow.com/questions/21904701/ruby-on-rails-4-what-authentication-gem-to-use#21907080

## Notes

### Encrypted rails secrets

https://www.engineyard.com/blog/encrypted-rails-secrets-on-rails-5.1

For heroku app - you need to set your secret key:

    heroku config:set RAILS_MASTER_KEY=[YOUR_KEY_HERE]

To edit secrets on Windows dev machine:

    Rails::Secrets.read_for_editing do |tmp_path|
      system("vim #{tmp_path}")
    end

### Links

    https://github.com/tumblr/tumblr_client
    https://www.ruby-toolbox.com/
    https://www.tumblr.com/docs/en/api/v2
    https://www.tumblr.com/oauth/apps
