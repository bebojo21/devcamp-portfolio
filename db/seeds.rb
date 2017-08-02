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

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"    
    )
end

puts "3 Topics created"

1.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "A",
        topic_id: Topic.last.id
    )
end

puts "1 blog posts created"

1.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

1.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

1.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

1.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

1.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 skills created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "By Isaac Johnsen",
        body: "A",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end

puts "1 portfolio items created"

9.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}",
    )
end

puts "1 technologies created"
