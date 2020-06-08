# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all
Course.destroy_all
CourseCategories.destroy_all
Classroom.destroy_all
Session.destroy_all
Usersession.destroy_all
User.destroy_all

# Creation des utilisateurs
5.times do
  User.create! do |user|
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.password = "123456"
    user.password_confirmation = "123456"
    user.can_access = 1
  end
end

# Creation des Teacher
5.times do
  User.create! do |user|
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.password = "123456"
    user.password_confirmation = "123456"
    user.can_access = 1
    user.is_teacher = 1
  end
end

# Creation des Admin
2.times do
  User.create! do |user|
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.password = "123456"
    user.password_confirmation = "123456"
    user.can_access = 1
    user.is_admin = 1
  end
end

# Création des catégories
Category.create!(:name => "Javascript")
Category.create!(:name => "PHP")
Category.create!(:name => "Management")

# Création des cours
Course.create(title: "Hello world !", description: Faker::Lorem.paragraph_by_chars, teacher_id: "1")

# Création des catégories
CourseCategories.create!(:name => "Javascript")
CourseCategories.create!(:name => "PHP")
CourseCategories.create!(:name => "Management")



# Creation des annonces
1.times do

  Advert.create! do |advert|
    advert.user_id = User.all.sample.id
    advert.url = "clicspot.com"
    advert.title = Faker::Lorem::sentence
    advert.strenght = Faker::Lorem::paragraph_by_chars(chars = 250)
    advert.opportunity = Faker::Lorem::paragraph_by_chars(chars = 250)
    advert.traffic = Faker::Lorem::paragraph_by_chars(chars = 250)
    advert.skill = Faker::Lorem::paragraph_by_chars(chars = 250)
    advert.description = Faker::Lorem::paragraph_by_chars(chars = 250)
    advert.price = rand(100...1000)
    advert.created_date = Date.today - rand(100...2000).day
    advert.revenue = rand(100...1000)
    advert.expense = rand(100...10000)
    advert.turnover = rand(100...10000)
    advert.visit = rand(10...2000)
    advert.time_work = ["0-10","10-20","20-30","30-40","40+"].sample
    advert.salaries = rand(1...10)
    advert.status = 1
    advert.step = "active"
    advert.monetization_id = Monetization.all.sample.id
    advert.category_id = Category.all.sample.id
    advert.technology_id = Technology.all.sample.id
    advert.industry_id = Industry.all.sample.id
  end
end