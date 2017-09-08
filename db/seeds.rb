puts '== Seed data =='
puts 'Create first blog'
Blog.create title: 'My first blog', author: 'You' if Blog.count == 0
