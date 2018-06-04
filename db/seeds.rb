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


sarah = User.create(username: "SPcodes94", bio: "Just a girl and her computer", email: "sarahp@gmail.com", password: "sarah")
jared = User.create(username: "Linux4lyfe", bio: "Ask me about my build", email: "Jared@gmail.com", password: "jared")
chris = User.create(username: "junkindonuts", bio: "Get that rat away from my code", email: "chris@gmail.com", password: "dansmeels")
mike = User.create(username: "MostlyFocusedMike", bio: "I need to stop talking about Vim", email: "mike@gmail.com", password: "mike")


mike.posts.create(title: "finished the site! I hope you like it", content: "Chris and I built this site as part of the Access Labs program. It's built in rails and Sass, and we lost a lot of sleep making it look presentable. Check out the source code at the link below.", url: "https://github.com/MostlyFocusedMike/code-post")
sarah.posts.create(title: "My Friends Cool Blog", content: "My friend's blog. such an avid blogger myself so i thought I'd share.", url:'https://junkindonuts.wordpress.com/2018/05/23/writing-efficient-code-and-big-o-notation/')
chris.posts.create(title: "I really LOVE good docs", content: "docs 4 lyfe", url:'https://www.rubydoc.info/github/teamcapybara/capybara/master')
jared.posts.create(title: "Anybody have any thoughts on the latest raspberry pi?", content: "I've been thinking of getting another for a home media server, should I pay the extra money for the latest version?", url: "")

chris.comments.create(post: Post.all[0], content: "Woo! we did it")

chris.comments.create(post: Post.all[1], content: "As the blog writer I would like some credit.")
sarah.comments.create(post: Post.all[1], content: "@junkindonuts")
chris.comments.create(post: Post.all[1], content: "Uhhh we didn't implement that feature yet")

sarah.comments.create(post: Post.all[2], content: "oh wow very helpful for testing my code!")
chris.comments.create(post: Post.all[2], content: "I still hate capybara though. Get that rat away from my code")
mike.comments.create(post: Post.all[2], content: "It's not the rat's fault your code breaks")
chris.comments.create(post: Post.all[2], content: "How dare you.")

mike.comments.create(post: Post.all[3], content: "if you want it for streaming, the new wifi module is great for that sort of thing. THe biggest drawback is powerconsumption, but if you're leaving it plugged into the wall, it shouldn't really matter")
jared.comments.create(post: Post.all[3], content: "Yea, it's just gonna sit behind my tv, power isn't a concern.")
sarah.comments.create(post: Post.all[3], content: "I have the newer version and on 4k there really is a huge difference.")
jared.comments.create(post: Post.all[3], content: "ok then I will definitely get that version. thank you")
