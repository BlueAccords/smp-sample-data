# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# puts Dir.pwd

require 'json'
require 'ffaker'

file = open("db/nexustop100_API.json")
jsonFile = file.read

parsed = JSON.parse(jsonFile)



# parsed.each do |mod|
#   puts mod["file_link"]
# end

puts parsed[0]["file_value"]

#puts jsonFile

# create_table "mods", primary_key: "mod_id", force: :cascade do |t|
#     t.text    "game",              limit: 255
#     t.text    "name",              limit: 255
#     t.text    "aliases",           limit: 255
#     t.boolean "is_utility"
#     t.integer "category",          limit: 2
#     t.boolean "has_adult_content"
#     t.integer "nm_id",             limit: 4
#     t.integer "ws_id",             limit: 4
#     t.integer "ll_id",             limit: 4
#   end


# create_table "mod_versions", primary_key: "mv_id", force: :cascade do |t|
#     t.integer "mod_id",    limit: 4
#     t.date    "released"
#     t.boolean "obsolete"
#     t.boolean "dangerous"
#   end

99.times do |n|
  #name  = FFaker::Name.last_name,
  # email = "example-#{n+1}@railstutorial.org"
  # password = "password"
  rand_category = rand(255).to_i
  file_name = parsed[n]["file_value"]
  nm_link = parsed[n]["file_link"]
  rand_nm_id = /\d+/.match(nm_link)
	# Mod.create!( mod_id: n,
	# 			 game: "Skyrim",
	# 			 name:  file_name,
	#              is_utility: false,
	#              category: rand_category,
	#              has_adult_content: false,
	#              nm_id: rand_nm_id
	#            )

	# Mod_Version.create!(	mv_id: n,
	# 						mod_id: n,
	# 						released: Date.new()
	#
	# 						
	#		)
	# end


