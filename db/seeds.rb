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

bike_image = [
    "https://i.ibb.co/bvQpjSS/electric2.jpg",
    "https://i.ibb.co/PC4BNRR/folding2.jpg",
    "https://i.ibb.co/rts95CP/mountain2.jpg",
    "https://i.ibb.co/BBNkxwy/multi2.jpg",
    "https://i.ibb.co/ZHRfsJd/multibike.jpg",
    "https://i.ibb.co/rts95CP/mountain2.jpg",
    "https://i.ibb.co/zx94vd0/2-DIAMOND-BLACK-1-1024x1024.jpg",
    "https://i.ibb.co/z78P09t/Best-Bikes-Reboot-Pinarello-Shutterstock.jpg",
    "https://i.ibb.co/c2Mzn0F/modern-bicycle.jpg",
    "https://i.ibb.co/SDkbkD6/Fat-Tire-Bike-by-Ensey-Motorized-Bikes.jpg",
    "https://i.ibb.co/ZWKCGJD/Fortified-Bicycle-Invincible-Theft-Proof-Bike-10-889x628.jpg",
    "https://i.ibb.co/LhpYYSj/rapide-21s-matt-copper.jpg",
    "https://i.ibb.co/z7ryKs5/pexels-photo-276517.jpg"
]

20.times do 
    User.create!(name: Faker::TvShows::Friends.character, bio: Faker::Hacker.say_something_smart, 
        password: "password", username: Faker::Artist.name, mod: rand(1...5))
end 

20.times do 
    Post.create!(title: Faker::Book.genre, description: Faker::Books::Lovecraft.paragraph, 
        likes: rand(1..50), url_link: bike_image.sample, user: User.all.sample)
end 

50.times do 
    Comment.create!( text: Faker::Books::Lovecraft.paragraph, 
        post: Post.all.sample )
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
