# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "✧ destroying all users & items ✧"
Item.destroy_all
User.destroy_all
puts "✧ destruction complete ✧"

puts "✧ creating new users ✧"
u1 = User.create(username: 'elle', profile_picture: 'https://66.media.tumblr.com/ff426f553ba9fb8bad183343bebf01e5/tumblr_p49ykgJQYk1tc5gvpo4_250.png')

u2 = User.create(username: 'blair', profile_picture: 'https://66.media.tumblr.com/2349a966c7fc6196cbc7de8f1c9b2bc1/tumblr_o9hthwcWXB1vrwyyeo2_250.png')
puts "✧ users have been created ✧"

puts "✧ creating new items ✧"
i1 = Item.create(user_id: u1.id, image: 'https://d2h1pu99sxkfvn.cloudfront.net/b0/153222/537655448_7mwvWMfaHr/P0.jpg', classification: 'bottom', brand: 'topshop')

i2 = Item.create(user_id: u1.id, image: 'https://d2h1pu99sxkfvn.cloudfront.net/b0/153222/537663017_kOQiDn7H2K/P0.jpg', classification: 'top', brand: 'miss selfridge')

i3 = Item.create(user_id: u1.id, image: 'https://d2h1pu99sxkfvn.cloudfront.net/b0/153222/465366496_oisLQ2XBev/P0.jpg', classification: 'bottom', brand: 'abbot lyon')

i4 = Item.create(user_id: u2.id, image: 'https://d2h1pu99sxkfvn.cloudfront.net/b0/176938/474972232_geYZaL14s6/P0.jpg', classification: 'bottom', brand: 'msgm')

i5 = Item.create(user_id: u2.id, image: 'https://d2h1pu99sxkfvn.cloudfront.net/b0/6657695/544708812_XVP5Mjscte/P0.jpg', classification: 'top', brand: 'chanel')
puts "✧ items have been created ✧"
