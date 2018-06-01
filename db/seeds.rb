# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ username: 'Star Wars' }, { username: 'Lord of the Rings' }])
#   Character.create(username: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all


karen = User.create(username: "karebear0w0", bio: "I really KARE about my BEARs. lolol", email: "kbear@gmail.com", password: "unBEARable")
sarah = User.create(username: "SP_codes_94", bio: "Just a girl and her computer", email: "sarahp@gmail.com", password: "sarah")
chris = User.create(username: "junkindonuts", bio: "Get that rat away from my code", email: "chris@gmail.com", password: "dansmeels")
mike = User.create(username: "MostlyFocusedMike", bio: "I need to stop talking about Vim", email: "mike@gmail.com", password: "mike")

karen.posts.create(title: "CheCk OuT mY Bears", content: "This is un-BEAR-ably adorable. What a BEAR of a tale I have for Yu AlL!!!!!11!!",url: 'https://www.azvinylworks.com/products/suck-it-the-dont-care-bear-printed-vinyl-decal')

sarah.posts.create(title: "My Friends Cool Blog", content: "My friend's blog. such an avid blogger myself so i thought I'd share.", url:'https://wordpress.com/post/junkindonuts.wordpress.com/14')
chris.posts.create(title: "I really LOVE good docs", content: "docs 4 lyfe", url:'https://www.rubydoc.info/github/teamcapybara/capybara/master')
mike.posts.create(title: "Friendly Reminder This Site is NOT for bears", content: "No more bears")

sarah.comments.create(post: Post.all[0], content: "This is stupid")
chris.comments.create(post: Post.all[0], content: "chill with the bears")
mike.comments.create(post: Post.all[0], content: "Karen our mods have recieved multiple reports. please stop.")
chris.comments.create(post: Post.all[0], content: "i posted my first comment weeks ago but i still hate this")
sarah.comments.create(post: Post.all[0], content: "^^^^^^^")


chris.comments.create(post: Post.all[1], content: "As the blog writer I would like some credit.")
sarah.comments.create(post: Post.all[1], content: "@junkindonuts")
chris.comments.create(post: Post.all[1], content: "Uhhh we didn't implement that feature yet")

mike.comments.create(post: Post.all[2], content: "Great to see code related posts")
sarah.comments.create(post: Post.all[2], content: "oh wow very helpful for testing my code!")
karen.comments.create(post: Post.all[2], content: "Is ThAt A BeAr?!?/!!!1")

chris.comments.create(post: Post.all[3], content: "RT")
