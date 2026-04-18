# Create Users (Creators)
usef = User.create!(name: "Usef", email: "usef@gmail.com")
omar   = User.create!(name: "Omar",   email: "omar@gmail.com")

# Create Posts
post1 = Post.create!(title: "Rails Basics",    content: "Learning MVC.", user: usef)
post2 = Post.create!(title: "ActiveRecord",    content: "Associations are fun!", user: usef)
post3 = Post.create!(title: "API with Rails",  content: "Building APIs.", user: omar)

# Create Editors
editor1 = Editor.create!(name: "ahmed", email: "ahmed@gmail.com")
editor2 = Editor.create!(name: "mostafa",  email: "mostafa@gmail.com")

# Link Editors to Posts (M-to-M)
post1.editors << editor1
post1.editors << editor2
post2.editors << editor1
post3.editors << editor2

puts "Seeded successfully!"
