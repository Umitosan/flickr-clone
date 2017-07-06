# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Post.destroy_all
Tag.destroy_all

5.times do |i|
  someName = Faker::Internet.user_name
  someUser = User.create!(username: someName,
                          email: Faker::Internet.safe_email(someName),
                          password: Faker::Internet.password,
                          admin: false
  )
end

# admin user
User.create!(username: 'topadmin',
            email: 'topadmin@gmail.com',
            password: '1234567',
            admin: true
)

p "Created #{User.count} users"
p "Created #{Post.count} posts"
p "Created #{Tag.count} tags"
