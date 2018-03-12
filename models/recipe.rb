require 'food2fork'

def recipe_finder
    Recipe.search(@user_food)
end