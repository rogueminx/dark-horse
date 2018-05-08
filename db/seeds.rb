# require  'open-uri'
# require 'json'
#
# Senator.destroy_all
#
# open("h") do |senators|
#   data = []
#   senators.read.each_line do |senator|
#     @item = JSON.parse(senator)
#       puts(@item)
#   #     object = {
#   #       "firstname":  @item["firstname"],
#   #     }
#   #     data << object
#   # end
#   # Senator.create!(data)
#   end
# end
#
#
#
#
#
#
# Publication.delete_all
#
# open("https://raw.githubusercontent.com/chrisjmendez/ror-subscriptions/master/db/seed_data/publications.json") do |publications|
#   data = []
#   publications.read.each_line do |publication|
#     @item = JSON.parse(publication)
#       object = {
#     		"title":        @item["title"],
#     		"description":  @item["description"],
#     		"file_url":     @item["file_url"]
#       }
#       data << object
#   end
#   Publication.create!(data)
# end
