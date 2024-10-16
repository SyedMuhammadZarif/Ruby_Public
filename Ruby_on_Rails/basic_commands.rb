#generating a controller: Creates a new controller named ControllerName 
#with specified actions (e.g., action1, action2). 
#This command generates the controller file, 
#view files for the actions, and updates the routing file

rails generate controller ControllerName action1 action2

=begin
purpose of a controller:
Controllers are responsible for handling incoming HTTP requests. They process user input, 
interact with models, and render views. Essentially, they act as intermediaries between the 
user interface (views) and the data (models). Each action in a controller corresponds to a 
specific URL route and defines what happens when a user accesses that route.
Example: A PostsController might have actions like index, show, create, update, and destroy,
 which manage the display and manipulation of blog posts.
=end

#generating a model
rails generate model ModelName field1:type field2:type

=begin
Purpose: Models represent the data structure of your application and encapsulate business logic. 
They interact with the database to perform operations such as creating, reading, updating, and deleting records.
Models define relationships between data (e.g., one-to-many, many-to-many) and contain validations and methods related to the data.
Example: A Post model might include fields like title, body, and author_id, along with methods to fetch related comments or to check if the post is published.
=end

#generatingmigration name
rails generate migration MigrationName
#run a migration
rails db:migrate


=begin
Migrations

Purpose: Migrations are used to define changes to the database schema over time. 
They allow you to create, modify, or delete database tables and columns in a structured way. 
Migrations are written in Ruby and can be version-controlled, making it easier to manage database 
changes across different environments (development, testing, production).
Example: A migration might create a posts table with fields for title, body, and created_at, 
or it might add a new published_at timestamp to an existing table.
=end

#open rails console
rails console

#run tests
rails test

#stop = ctrl+c

#generate with specifi database
rails new my_app --database=postgresql
#skip javascript 
rails new my_app --skip-javascript
#skip test framework
rails new my_app --skip-test
