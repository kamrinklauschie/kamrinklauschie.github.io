# TODO: Below are three questions for you to answer. Read each of the questions
# and make sure each of the methods `return` the correct answer.
# ⚠️ Try and answer them before running `rake`.

def restaurants_resources_routes
  # TODO: Return an `Array` with the 7 `routes` that `resources :restaurants` would generate for you.
  routes = []
  routes << "get '/restaurants', to: 'restaurants#index'"
  routes << "post '/restaurants', to: 'restaurants#create'"
  routes << "get '/restaurants/new', to: 'restaurants#new'"
  routes << "get '/restaurants/:id/edit', to: 'restaurants#edit'"
  routes << "get '/restaurants/:id', to: 'restaurants#show'"
  routes << "patch '/restaurants/:id', to: 'restaurants#update'"
  routes << "delete '/restaurants/:id', to: 'restaurants#destroy'"
  # Add more routes here
  return routes
end

def nested_routes_for_one_to_many?
  # TODO: Return a `true` or `false` to answer this question:
  # If you have a one to many relationship between you models like `Restaurant` and `Review` (belongs_to :restaurant),
  # do you always have to nest all your routes for `Review` in `Restaurant`?
  return false
end

def validate_name
  # TODO: Return a `string` of the ActiveRecord validation need to make sure no record is
  # created without a name. /!\ in Rails' context, a validation **is not** a String!
  # (it is only a String for the purpose of this exercise)
  return 'validates :name, presence: true'
end
