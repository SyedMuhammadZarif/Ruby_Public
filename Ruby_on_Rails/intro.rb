#ROR is a web app framework
#fillows convention over configuration
#MVC architechture: Model-> Represents dat and business logic of the op, interacts with database and manages operation
#view -> The user interface of the application, it presents data to the user and handles user input
#-> controller: acts an intermediary between model and view

=begin

#installing
1) gem install rails
2)rails new myapp
  cd myapp

3)opening gemfile:
    nano Gemfile

4) adding mongoid:
  gem 'mongoid', '~> 7.0'

5) install:
  bundle install

###configuring mongoid
#create a mongoid generator for config file
#1 rails g mongoid:config, this is generated inside config directory, used to configure connection
#2 Open the file and development section is pointing to the correcct database
development:
  clients:
    default:
      database: myapp_development
      hosts:
        - localhost:27017
      options:
#3 start mongod
mongod



app/: Contains the main application code, including models, views, and controllers.
models/: Contains the application models (data structures).
views/: Contains the view templates for your application.
controllers/: Contains the controller classes that manage application flow.
config/: Contains configuration files for the application.
db/: Contains database-related files, including migrations.
public/: Contains static files that can be accessed directly (like images, stylesheets).
test/: Contains tests for your application.
Gemfile: Specifies the gems your application depends on.
