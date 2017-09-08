puts '== Seed data =='
puts 'Create first blog'
Blog.create title: 'My first blog', author: 'Me' if Blog.count == 0
