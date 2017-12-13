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

## Management

### Association with heroku remote for CLI

    heroku git:remote -a tumblr-tags

### Local run

    heroku local

## Devise: Authentication management gem

https://stackoverflow.com/questions/21904701/ruby-on-rails-4-what-authentication-gem-to-use#21907080
