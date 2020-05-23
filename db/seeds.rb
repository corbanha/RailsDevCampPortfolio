# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Best Topic ##{topic}"
  )
end

10.times do |blog|
  Blog.create!(title: "Epic Blog ##{blog}", body: 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.',
  topic_id: (blog) % 3 + 1)
end

8.times do |portfolio|
  p = Portfolio.create!(title: "Epic Portfolio ##{portfolio}",
                    subtitle: "Ruby on Rails",
                    body: 'Here is some body text',
                    main_image: 'https://picsum.photos/600/400',
                    thumbnail: 'https://picsum.photos/350/200')
  p.technologies.create!(name: 'Rails')
end
1.times do |portfolio|
  Portfolio.create!(title: "Epic Portfolio ##{portfolio}",
                    subtitle: "Angular",
                    body: 'Here is some body text',
                    main_image: 'https://picsum.photos/600/400',
                    thumbnail: 'https://picsum.photos/350/200')
end

5.times do |skill|
  Skill.create!(title: "Here is skill ##{skill}", percent_utilized: skill * 8)
end
