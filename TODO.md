# Ember-Blog Todos

## Models

- [ ] Post
- [ ] Post/Like
- [ ] Post/Comment
- [ ] Post/Comment/Like
- [ ] User
- [ ] Role
- [ ] Role_User
- [ ] Tag

## Technical Deps

- [x] ember-rails
- [x] jquery-rails
- [x] coffee
- [x] sass
- [x] ruby-debug19
- [x] ruby-debug-ide19
- [x] thin
- [x] therubyracer
- [ ] emberjs in version 1.0 (latest RC if needed)
- [ ] phantomjs
- [ ] twitter-bootstrap
- [ ] eventmachine
- [ ] i18n-js
- [ ] gem "omniauth"
- [ ] gem "omniauth-openid"
- [ ] gem "openid-redis-store"
- [ ] gem "omniauth-facebook"
- [ ] gem "omniauth-twitter"

## Later
- [ ] redis
- [ ] redis-rails
- [ ] sidekiq (http://mperham.github.com/sidekiq/)
- [ ] vestal_versions oder paper_trail
- [ ] travis
```yaml
(.travis.yml
language: ruby
rvm:
  - 1.9.3
before_script:
  - cp config/database.yml.sample config/database.yml
  - cp config/redis.yml.sample config/redis.yml
  - psql -c 'create database discourse_test;' -U postgres
  - rake db:migrate
script: 'rake spec && bundle exec guard-jasmine --server-timeout=60'
services:
  - redis-server)
```