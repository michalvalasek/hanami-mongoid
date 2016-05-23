# hanami-mongoid

Example application built with Hanami ruby web framework and Mongoid as the data persistence layer.
The project consists of two *apps* - public area and the administration UI.
Admin UI is accessible only by authenticated users - there's a simple authentication module which checks user credentials (email+password) against the database and creates user session in case of successful login.

## What might interest you as a Hanami beginner:
- integration with Mongoid
- separate admin UI app
- custom DB based authentication

### Mongoid integration

Gem `hanami-model` has been removed and replaced with gem `mongoid`. Everything in `lib/` has been removed, instead I created a new folder `models` where all Mongoid models will be put (so that tey are accessible by all apps) and the loader script `lib/trial.rb` which loads the Mongoid configuration and then all the models.

### Separate admin UI app

The typical Hanami app consists of one or more *apps* each with it's own routes, controllers, views, templates, configuration, etc. This comes in handy when you want a separate administration UI but you also don't want to split the project into multiple repositories. I created a new app in `apps/admin` whic will mount at `/admin` URL - see the `config/environment.rb` file.

### Custom DB based authentication

The admin app should only accessible for admin users, so I implemented a very simple authentication module (`apps/admin/controllers/authentication.rb`) which checks if there's a session with valid `user_id`. It also *exposes* the `current_user` object for use in all templates/views. Login and logout is handled by the session controller - in case of successful login (valid email+password combination) it creates the session with `user_id` and redirects to the admin UI dashboard.

**Note**: there is no registration process implemented right now - you need to create the admin user manually in the hanami console.

## Instalation

This app expects mongodb setup and running.

1. Clone this repository
2. Remove the `.ruby-version` and `.rbenv-gemsets` files if you don't use *rbenv**. If you *do* use rbenv, make sure you have ruby version 2.3.0 installed or hange the `.ruby-version` accordingly.
3. Install gems: `bundle install`
4. Create admin user in the hanami console:
  - `$ bundle exec hanami console`
  - `> User.create(email: "your@email", password: "yourpassword")`
5. Start the hanami server: `bundle exec hanami server`
6. See your app running at [localhost:2300](http://localhost:2300)

## Improvements

I'm sure there's plenty to add/improve to this example - if you have some ideas or suggestions, please comment or create an issue. I'd be super happy to work with you to make this better.
