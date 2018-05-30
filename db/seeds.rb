# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profile.destroy_all 
Post.destroy_all
Comment.destroy_all

steve = Profile.create(name: "Steve", bio: "A real cool dude", email: "steve@gmail.com", password: "steve")
karen = Profile.create(name: "Karen", bio: "A real cool lady", email: "karen@gmail.com", password: "karen")
sarah = Profile.create(name: "Sarah", bio: "Just a girl and her camera", email: "sarah@gmail.com", password: "sarah")
chris = Profile.create(name: "Chris", bio: "Get that rat away from my code", email: "chris@gmail.com", password: "chris")
mike = Profile.create(name: "Mike", bio: "I need to stop talking about Vim", email: "mike@gmail.com", password: "mike")

steve.posts.create(title: "First post", content: "This is my first post here, I hope you like it")
steve.posts.create(title: "Second post", content: "This is my second post here, it's even better now")
karen.posts.create(title: "Moonlight on the lake", content: "Moonlight on the lake; such a nice sight for no money; this is a haiku")
karen.posts.create(title: "My car broke", content: "Honestly could this day get any worse? No.")

sarah.comments.create(post: Post.all[0], content: "this is the first comment on the first post")
chris.comments.create(post: Post.all[1], content: "Oh man, this post is 2nd best")
mike.comments.create(post: Post.all[2], content: "Nice haiku, I think?")
