# TODO: Below are three questions for you to answer. Read each of the questions
# and make sure each of the methods `return` the correct answer.


def rails_app_with_wepback
  # TODO: Return a `String` with the write command to create a new rails app called `mister-cocktail` with webpack.
  return 'rails new mister-cocktail --webpack'
end

def modern_javascript
  # TODO: Return a `String` of what you have to add to `application.html.erb` if you want to import
  # the javascript file `application.js` that is inside of `app/javascript`
  return "<%= javascript_pack_tag 'application' %>"
end

def add_a_npm_package
  # TODO: Return a `String` with the command to type in the terminal to add the npm package `sweetalert`
  # to your rails app.
  return 'yarn add sweetalert'
end
