# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)

User.create(id: 1, name: "cd", email: "cd@cd.com", password: "112233", password_confirmation: "112233")


# UserPanel.create(id: 1, title: "エビピラフ", ingredient: "えび", seasoning: "こしょう", user_id: 1,
# created_at: "2016-01-01-00-00-00", updated_at: "2016-01-01-00-00-00")
# UserPanel.create(id: 2, title: "フライドチキン", ingredient: "鶏肉", seasoning: "油", user_id: 1,
# created_at: "2016-01-01-00-00-00", updated_at: "2016-01-01-00-00-00")
User.create(id: 2, name: "c", email: "c@c.com", password: "112233", password_confirmation: "112233")

# UserPanel.create(id: 1, title: "からあげ", ingredient: "肉", seasoning: "小麦粉", user_id: 2)
# UserPanel.create(id: 2, title: "メンマ", ingredient: "メンマ", seasoning: "醤油", user_id: 2)
