# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 Topics created"
10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Kogi sriracha next level, marfa photo booth pug snackwave brunch shoreditch vice taiyaki cold-pressed pork belly. 
        Gluten-free gochujang activated charcoal poke. Waistcoat typewriter blog, live-edge lo-fi shoreditch 8-bit pinterest vape. 
        Art party keytar brunch, kogi meditation migas mustache occupy pok pok jean shorts lumbersexual 8-bit",
        topic_id: Topic.last.id
    )
end

puts "10 Blogs created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 Skills created"

5.times do |highlight|
    Highlight.create!(
        title: "Portfolio title: #{highlight}",
        subtitle: "Ruby on Rails",
        body: "Kogi sriracha next level, marfa photo booth pug snackwave brunch shoreditch vice taiyaki cold-pressed pork belly. 
        Gluten-free gochujang activated charcoal poke. Waistcoat typewriter blog, live-edge lo-fi shoreditch 8-bit pinterest vape. 
        Art party keytar brunch, kogi meditation migas mustache occupy pok pok jean shorts lumbersexual 8-bit",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end

4.times do |highlight|
    Highlight.create!(
        title: "Portfolio title: #{highlight}",
        subtitle: "React JS",
        body: "Kogi sriracha next level, marfa photo booth pug snackwave brunch shoreditch vice taiyaki cold-pressed pork belly. 
        Gluten-free gochujang activated charcoal poke. Waistcoat typewriter blog, live-edge lo-fi shoreditch 8-bit pinterest vape. 
        Art party keytar brunch, kogi meditation migas mustache occupy pok pok jean shorts lumbersexual 8-bit",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end

puts "9 Highlights created"

3.times do |technology|
    Technology.create!(
        name: "Technology #{technology}",
        highlight_id: Highlight.last.id
    )
end

puts "3 Technologies created"