#Routing in rails
#defined in the config/routes.rb
# config/routes.rb
# Mapping the root URL to a controller action.
Rails.application.routes.draw do
  root 'home#index'  # Sets the root URL to the index action of the HomeController
end


=begin
 RESTful Routing
Overview: Use Rails conventions to set up routes that correspond to RESTful actions for a resource.
Example: Setting up routes for a Posts resource.
=end
# config/routes.rb
Rails.application.routes.draw do
  resources :posts  # Generates all RESTful routes for posts
end

=begin
This command creates routes for the following actions:
index: GET /posts
show: GET /posts/
new: GET /posts/new
create: POST /posts
edit: GET /posts/
/edit
update: PATCH/PUT /posts/
destroy: DELETE /posts/
=end
=begin
Nested Resources
Overview: Create nested routes to represent relationships between resources.
Example: Setting up routes for comments that belong to posts.
=end
# config/routes.rb
Rails.application.routes.draw do
  resources :posts do
    resources :comments  # Nest comments under posts
  end
end
This generates routes like:

POST /posts/:post_id/comments (create a new comment for a specific post)
3.4 Named Routes
Overview: Assign names to your routes for easier reference in your application.
Example: Creating a named route for a specific action.


# config/routes.rb
Rails.application.routes.draw do
  get 'about', to: 'pages#about', as: 'about'  # Creates a named route
end
You can use this named route in your views or controllers:

This generates routes like:

POST /posts/:post_id/comments (create a new comment for a specific post)
3.4 Named Routes
Overview: Assign names to your routes for easier reference in your application.
Example: Creating a named route for a specific action.


# config/routes.rb
Rails.application.routes.draw do
  get 'about', to: 'pages#about', as: 'about'  # Creates a named route
end
You can use this named route in your views or controllers:
=begin
3.4 Named Routes
Overview: Assign names to your routes for easier reference in your application.
Example: Creating a named route for a specific action.


# config/routes.rb
Rails.application.routes.draw do
  get 'about', to: 'pages#about', as: 'about'  # Creates a named route
end
You can use this named route in your views or controller
erb

<%= link_to 'About Us', about_path %>
3.5 Custom Routes
Overview: Define custom routes that don’t follow RESTful conventions.
Example: Setting up a custom route for an action.


# config/routes.rb
Rails.application.routes.draw do
  get 'search', to: 'search#index'  # Custom route for a search action
end
3.6 Route Constraints
Overview: Apply constraints to your routes based on conditions like request type, subdomain, or parameters.
Example: Restricting a route to only accept certain HTTP methods.


# config/routes.rb
Rails.application.routes.draw do
  get 'admin/dashboard', to: 'admin#dashboard', constraints: { subdomain: 'admin' }
end
3.7 Resources with Options
Overview: Customize the generated routes by passing options to the resources method.
Example: Customizing routes to exclude certain actions.


# config/routes.rb
Rails.application.routes.draw do
  resources :posts, only: [:index, :show]  # Only generate routes for index and show actions
end
Summary of Routing
Basic Routing: Define simple routes.
RESTful Routing: Use Rails conventions for resources.
Nested Resources: Represent relationships between resources.
Named Routes: Create easily referenceable routes.
Custom Routes: Set up non-RESTful routes.
Route Constraints: Apply conditions to routes.
Resources with Options: Customize generated routes.