# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Comment.destroy_all
Tag.destroy_all
Topic.destroy_all

puts 'Seeding'

resources = [
    "https://www.youtube.com/watch?v=IYCa1F-OWmk",
    "https://www.youtube.com/watch?v=Kp3HGwlXwCk",
    "https://www.youtube.com/watch?v=g2nMKzhkvxw",
    "https://www.youtube.com/watch?v=5B587bQ-TNg",
    "https://github.com/learn-co-curriculum/environment-mac-os-catalina-setup",
    "https://www.w3schools.com/html/html_iframe.asp",
    "https://reactjs.org/docs/events.html",
    "https://upmostly.com/tutorials/react-onhover-event-handling-with-examples",
    "https://api.rubyonrails.org/classes/ActiveRecord/Schema.html",
    "https://github.com/faker-ruby/faker",
    "https://docs.google.com/presentation/d/128am55_H_93M9qCjccIZ2Rm6k-hBrOluABozNlf2kgU/edit",
    "https://semantic-ui.com/usage/theming.html",
    "https://reacttraining.com/react-router/web/api/Route/render-func"
]

20.times do 
    User.create!(name: Faker::TvShows::Friends.character, bio: Faker::Hacker.say_something_smart, 
        password: "password", username: Faker::Artist.name, mod: rand(1...5))
end

# User.create!(name: 'Stephen Cases', 
#     bio: 'Digital Marketer turned Software Engineer. Looking to change the world one line of code at a time.', 
#     password: "goats_330", 
#     username: 'SCases', 
#     mod: 5)

# User.create!(name: 'Edgar Rivera', 
#     bio: 'Full-Stack Monster for hire', 
#     password: "goats_330", 
#     username: 'Proto E', 
#     mod: 5)

# User.create!(name: 'Elliott King', 
#     bio: 'LONG LIVE THE KING!!!', 
#     password: "goats_330", 
#     username: 'Send Bitcoin', 
#     mod: 5)

# User.create!(name: 'Elias Taveras', 
#     bio: 'Bruh...', 
#     password: "goats_330", 
#     username: 'Bruh', 
#     mod: 5)

# User.create!(name: 'Jordan Melidor', 
#     bio: 'Software Engineering Student', 
#     password: "goats_330", 
#     username: 'One Piece Fan', 
#     mod: 4)

# User.create!(name: 'Tashawn Williams', 
#     bio: 'Ruby Instructor - Flatiron School', 
#     password: "goats_330", 
#     username: 'TWil-Lite', 
#     mod: 1)

# User.create!(name: 'Alicia Whitney', 
#     bio: 'Before Flatiron, I ran an afterschool leadership program for 9th and 10th graders in Flushing, Queens!', 
#     password: "goats_330", 
#     username: 'AliWhit', 
#     mod: 4)

# User.create!(name: 'Justin Muzzi', 
#     bio: 'Hey! My name is Justin and I am the Senior Education Manager for the FiDi campus!', 
#     password: "goats_330", 
#     username: 'Justin Muzzi', 
#     mod: 2)

# User.create!(name: 'Elizabeth Karen', 
#     bio: 'Software Engineering Student and 90-Day Fiance Fanatic', 
#     password: "goats_330", 
#     username: 'Liz', 
#     mod: 5)

# User.create!(name: 'Vakas Akhtar', 
#     bio: 'Hey there! My name is Vakas (pronounced Vuh- kas) and I recently graduated from Fordham University with a degree in Economics.', 
#     password: "newbie", 
#     username: 'VAhktar', 
#     mod: 1)

# User.create!(name: 'Cathy DOnofrio', 
#     bio: 'I recently ended a 10 year career working in financial roles within the advertising industry. ', 
#     password: "newbie", 
#     username: 'CDO WHOA', 
#     mod: 1)

# User.create!(name: 'Yuliya Yurkevich', 
#     bio: 'Hi everyone! My name is Yuliya. For the last few years I was thinking of moving on and studying IT but my schedule was pretty tight for that. ', 
#     password: "newbie", 
#     username: 'YY', 
#     mod: 2)

# User.create!(name: 'Ben Garlock', 
#     bio: 'Hello fellow classmates! My name is Ben and I am really looking forward to starting class and meeting everyone! ', 
#     password: "newbie", 
#     username: 'Ben G', 
#     mod: 2)

# User.create!(name: 'Michael Horowitz', 
#     bio: 'Hey everyone, I am Michael or Mike, whichever is easier. I am originally born in Israel, but grew up in south Florida, and was in the Israeli military for about three years.', 
#     password: "newbie", 
#     username: 'Mike Witz', 
#     mod: 3)

# User.create!(name: 'Kyle Burda', 
#     bio: 'I grew up in Coney Island – a neighborhood that is nestled on the outskirts of New York City with views of the Manhattan skyline only a clear days – pining for a career on Wall Street in order to put Coney Island on the horizon behind me. ', 
#     password: "newbie", 
#     username: 'KBurda', 
#     mod: 3)

# User.create!(name: 'Jeff Adler', 
#     bio: 'Hi all! I grew up in suburban NJ until moving all over the place (Argentina, Colombia, Denver, California, Mexico, Japan) doing a variety of academic research projects (my MA is in Linguistics), teaching gigs, and finally, working for a few years in the Ad Tech industry.', 
#     password: "newbie", 
#     username: 'AdlerJ', 
#     mod: 3)

# User.create!(name: 'Michael Schneider', 
#     bio: 'Hey everyone, I grew up in Queens, NY and have had many different ideas about what I want to do with my life. ', 
#     password: "newbie", 
#     username: 'MS Dos', 
#     mod: 5)

# User.create!(name: 'Jake Hyde', 
#     bio: 'Hello! My name is Jake. I am from Long Island, NY. I studied Electronic Music at SUNY at Albany. ', 
#     password: "newbie", 
#     username: 'JKJK', 
#     mod: 5)

# User.create!(name: 'Duke Ko', 
#     bio: 'Hello everyone! I am from Whitestone Queens, NY. I studied Nutrition and Exercise Sports Science at Queens College and worked as a personal trainer at LA Fitness for about 2 years. ', 
#     password: "newbie", 
#     username: 'THE DUKE KO', 
#     mod: 5)

# User.create!(name: 'Luis Reyes', 
#     bio: 'Greetings and salutations, fellow humans.', 
#     password: "newbie", 
#     username: 'Luis R', 
#     mod: 5)


20.times do 
    Post.create!(title: Faker::Book.genre, description: Faker::Books::Lovecraft.paragraph, 
    likes: rand(1..50), url_link: resources.sample, video: Faker::Boolean.boolean, user: User.all.sample)
end 

# Post.create!(title: 'React Slide Notes (sourced from Udemy)', 
# description: 'Notes that I took for Mod 3 JavaScript.',
#     likes: rand(1..10), 
#     url_link:'https://docs.google.com/presentation/d/128am55_H_93M9qCjccIZ2Rm6k-hBrOluABozNlf2kgU/edit#slide=id.g880e993284_14_61', 
#     video: false, 
#     user: 1)

# Post.create!(title: 'Mod 3 Final Project', 
#     description: 'This was my Mod 3 final project with Jordan Melidor. We developed this interactive OS that mimics the UI/UX of a macOS.',
#     likes: rand(10..28), 
#     url_link:'https://www.youtube.com/watch?v=5LOe7IiMgDs&feature=emb_title', 
#     video: true, 
#     user: 1)

# Post.create!(title: 'React Router - step-by-step installation process', 
#     description: 'React Router ships with a few hooks that let you access the state of the router and perform navigation from inside your components. Please note: You need to be using React >= 16.8 in order to use any of these hooks!',
#     likes: rand(11..25), 
#     url_link:'https://reacttraining.com/react-router/web/api/Route/render-func', 
#     video: false, 
#     user: 2)

# Post.create!(title: 'Semanti UI', 
#     description: 'Dont let your lack of CSS slow you down. With Semantic UI, you can leverage a full CSS framework with simple class naming conventions to bring your app to life!',
#     likes: rand(1..20), 
#     url_link:'https://semantic-ui.com/', 
#     video: false, 
#     user: 2)

# Post.create!(title: 'Blogging with Medium and Github Pages', 
#     description: 'I appreciate Medium as an aggregator. I love that it shows me many different articles, that I can filter for interest, and that I can clap to support my friends. However, it leaves a few things to be desired. It stores my posts in one place, but my profile page does not say much about me. I would also like to have a backup of my blog posts for my own use (in case anything happens to Medium). It would be nice to have my blogs connected to a personal site that also my projects, LinkedIn, and resume.',
#     likes: rand(1..24), 
#     url_link:'https://elliott-king.github.io/meta/markdown/jekyll/gh-pages/2020/06/15/blog-on-gh.html', 
#     video: false, 
#     user: 3)

# Post.create!(title: 'Tracking Your Browser Fingerprint', 
#     description: 'Most of us understand that we are being tracked on the web, and most of us understand the basics of cookies. However, this is not the whole picture. While cookies track you as you traverse the web, fingerprints attempt to identify you without tracking. Here, I will attempt to give a basic overview of how fingerprints are created, and how to protect yourself from being identified.',
#     likes: rand(1..24), 
#     url_link:'https://elliott-king.github.io/security/fingerprinting/web-cookies/privacy/javascript/2020/05/26/fingerprinting-i.html', 
#     video: false, 
#     user: 3)

# Post.create!(title: 'Creating a New Rails API with a PostgreSQL Database', 
#     description: 'Every time I create a new Rails API with a PostgreSQL database, I find myself googling “create a new Rails API with a PostgreSQL database”. So I’m leaving these notes here for myself, and anyone else who finds this helpful.',
#     likes: rand(1..24), 
#     url_link:'https://medium.com/@ethanryan/creating-a-new-rails-api-with-a-postgresql-database-488ffce649d9', 
#     video: false, 
#     user: 4)

# Post.create!(title: 'Setting up CORS to my Rails API', 
#     description: 'We have started building our project’s front end with Angular 7. Sithum Meegahapola, Our Trainee Software Engineer is working on this task. He recently started to capture data from the API. API is handled by myself and it is a Rails API.',
#     likes: rand(1..24), 
#     url_link:'https://medium.com/@admatbandara/setting-up-cors-to-my-rails-api-a6184e461a0f', 
#     video: false, 
#     user: 6)

# Post.create!(title: 'Basic JavaScript Projects', 
#     description: 'A lengthy YouTube video on JavaScript project ideas to inspire your Final Project.',
#     likes: rand(1..24), 
#     url_link:'https://www.youtube.com/watch?time_continue=53&v=Kp3HGwlXwCk&feature=emb_title', 
#     video: true, 
#     user: 8)

# Post.create!(title: 'The Only TRUE Way to Learn JavaScript', 
#     description: 'This video explains the best way to become a JavaScript programmer.',
#     likes: rand(1..24), 
#     url_link:'https://www.youtube.com/watch?v=HnXmI2UVZlU', 
#     video: true, 
#     user: 11)

# Post.create!(title: 'Creating a New Rails API with a PostgreSQL Database', 
#     description: 'Every time I create a new Rails API with a PostgreSQL database, I find myself googling “create a new Rails API with a PostgreSQL database”. So I’m leaving these notes here for myself, and anyone else who finds this helpful.',
#     likes: rand(1..24), 
#     url_link:'https://medium.com/@ethanryan/creating-a-new-rails-api-with-a-postgresql-database-488ffce649d9', 
#     video: false, 
#     user: 11)

# Post.create!(title: 'Guardians of the DOM', 
#     description: 'A blog post by Coral Fussman where she discusses DOM traversal and manipulation.',
#     likes: rand(1..24), 
#     url_link:'https://medium.com/@coralfussman/guardians-of-the-dom-84ffbc782cd6', 
#     video: false, 
#     user: 12)

# Post.create!(title: 'An moment of enormous opportunity', 
#     description: 'Blog Post - Making society more equitable through expanded access to STEM education.',
#     likes: rand(1..24), 
#     url_link:'https://medium.com/@katmaldon/an-moment-of-enormous-opportunity-1f8faac1d4fe', 
#     video: false, 
#     user: 12)

# Post.create!(title: '5 JavaScript Things You Should Know', 
#     description: 'In this episode we are going to take a look at the top 5 concepts you should know in javascript. These concepts are good to learn after you are comfortable with the basic syntax of javascript and you want to dive deeper into what is happening under the hood. We are going to take a look at things like how hoisting works, visualizing how our javascript code runs with the call stack. A basic overview of callbacks and async await (deserves its own episode).',
#     likes: rand(1..24), 
#     url_link:'https://www.youtube.com/watch?v=v0QTqHXiVNw', 
#     video: true, 
#     user: 12)        
 
# Post.create!(title: 'The 7 Deadly (RESTful) Routes', 
# description: 'If you have touch base with Rails, you definitely heard about routes. Once you understand them, they are pretty straight forward and easy to build.',
#     likes: rand(1..24), 
#     url_link:'https://medium.com/@jordanmelidor/the-7-deadly-restful-routes-b0759635a623', 
#     video: false, 
#     user: 14)
    
# Post.create!(title: 'PaperTrail: The Ruby Gem We Never Knew We Needed', 
#     description: 'All those warnings to back-up your files or hard drive? Not me. Save your work after large strides just in case something happens? Ha! I laugh in the face of danger.',
#     likes: rand(1..24), 
#     url_link:'https://medium.com/@wise.melissa19/papertrail-the-ruby-gem-we-never-knew-we-needed-a6858e3f2ddf', 
#     video: false, 
#     user: 15)

# Post.create!(title: 'The Importance of Sharing', 
#     description: 'Sharing is caring. Sharing is what we’re supposed to do. Sharing makes us feel like we are a part of something greater than just ourselves. Sharing highlights our individual impact on the group. Technology allows us to share. As I started to record my screen, I felt what author Steven Pressfield refers to, in his best-selling book The War of Art, as resistance.',
#     likes: rand(1..24), 
#     url_link:'https://medium.com/@eliastave/the-importance-of-sharing-475386b61373', 
#     video: false, 
#     user: 18)

# Post.create!(title: 'How to use your Mac (without a mouse)', 
#     description: 'This is a short helper guide for all those programmers out there who still find themselves taking their hands off their keyboard for most, if not all, navigational purposes.',
#     likes: rand(1..24), 
#     url_link:'https://medium.com/@yoichi.michael.nagano/how-to-use-your-mac-without-a-mouse-37280396058b', 
#     video: false, 
#     user: 19)

# Post.create!(title: 'Top 10 JavaScript Interview Questions', 
#     description: 'What happens after Mod 5? Here are top 10 commonly asked JavaScript interview questions and possible answers.',
#     likes: rand(1..24), 
#     url_link:'https://www.youtube.com/watch?v=oxoFVqetl1E', 
#     video: false, 
#     user: 19)





50.times do 
    Comment.create!( text: Faker::Books::Lovecraft.paragraph, post: Post.all.sample, user: User.all.sample )
end

Tag.create!( color: 'Crimson', label: 'Ruby', post: Post.all.sample )
Tag.create!( color: 'DarkRed', label: 'Rails', post: Post.all.sample )
Tag.create!( color: 'Yellow', label: 'JavaScript', post: Post.all.sample )
Tag.create!( color: 'Blue', label: 'React', post: Post.all.sample )
Tag.create!( color: 'Grey', label: 'HTML', post: Post.all.sample )


Topic.create!( category: 'Ruby', post: Post.all.sample )
Topic.create!( category: 'Rails', post: Post.all.sample )
Topic.create!( category: 'JavaScript', post: Post.all.sample )
Topic.create!( category: 'React', post: Post.all.sample )
Topic.create!( category: 'Other', post: Post.all.sample )
