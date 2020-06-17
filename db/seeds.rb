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

20.times do 
    Post.create!(title: Faker::Book.genre, description: Faker::Books::Lovecraft.paragraph, 
        likes: rand(1..50), url_link: resources.sample, video: Faker::Boolean.boolean, user: User.all.sample)
end 

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
