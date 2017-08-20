User.create!(
  email: "admin@user.com",
  password: "Admin_User",
  password_confirmation: "Admin_User",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 admin users created"

User.create!(
  email: "regular@user.com",
  password: "Regular_User",
  password_confirmation: "Regular_User",
  name: "Regular User",
)

puts "1 regular users created"

1.times do |topic|
    Topic.create!(
        title: "General"    
    )
end

1.times do |topic|
    Topic.create!(
        title: "Coding"    
    )
end

puts "2 Topics created"

1.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "A",
        topic_id: Topic.first.id
    )
end

puts "1 blog posts created"

1.times do |skill|
    Skill.create!(
        title: "C#",
        percent_utilized: 35
    )
end

1.times do |skill|
    Skill.create!(
        title: "Ruby on Rails",
        percent_utilized: 30
    )
end

1.times do |skill|
    Skill.create!(
        title: "HTML",
        percent_utilized: 15
    )
end

1.times do |skill|
    Skill.create!(
        title: "CSS",
        percent_utilized: 15
    )
end

1.times do |skill|
    Skill.create!(
        title: "Javascript",
        percent_utilized: 5
    )
end

puts "5 skills created"

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "By Isaac Johnsen",
        body: "A",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "By Isaac Johnsen",
        body: "A",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "By Isaac Johnsen",
        body: "A",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end

puts "3 portfolio items created"
