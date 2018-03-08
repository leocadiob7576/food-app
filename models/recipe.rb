require 'edamam-ruby'

client = Edamam::Client.new(app_id: "b5ae6e16", app_key: "99df03635880bb97c81ddf53c476f91a")

puts nutritional_data = client.food_database.nutritional_data("1 large apple")