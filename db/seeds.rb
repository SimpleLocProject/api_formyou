# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Category.destroy_all
# Course.destroy_all
# CourseCategories.destroy_all
# Classroom.destroy_all
# Session.destroy_all
# Usersession.destroy_all
# User.destroy_all

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
Course.create(title: "Cours 1", description: Faker::Lorem.paragraph_by_chars, teacher_id: User.is_teacher.sample.id)
Course.create(title: "Cours 2", description: Faker::Lorem.paragraph_by_chars, teacher_id: User.is_teacher.sample.id)
Course.create(title: "Cours 3", description: Faker::Lorem.paragraph_by_chars, teacher_id: User.is_teacher.sample.id)
Course.create(title: "Cours 4", description: Faker::Lorem.paragraph_by_chars, teacher_id: User.is_teacher.sample.id)

# Création des catégories
CourseCategory.create(course_id: Course.all.sample.id, category_id: Category.all.sample.id)
CourseCategory.create(course_id: Course.all.sample.id, category_id: Category.all.sample.id)
CourseCategory.create(course_id: Course.all.sample.id, category_id: Category.all.sample.id)
CourseCategory.create(course_id: Course.all.sample.id, category_id: Category.all.sample.id)

# Création des Classroom
Classroom.create(name: "ClassRoom 1")
Classroom.create(name: "ClassRoom 2")
Classroom.create(name: "ClassRoom 3")
Classroom.create(name: "ClassRoom 4")

# Creation des sessions
5.times do

  Session.create! do |session|
    session.course_id = Course.all.sample.id
    session.begin_date = Time.now
    session.course_id = Course.all.sample.id
    session.classroom_id = Classroom.all.sample.id
  end
end

# Creation des User Sessions
5.times do

  Usersession.create! do |usersession|
    usersession.note = rand(1...20)
    usersession.student_id = User.is_student.sample.id
    usersession.session_id = Session.all.sample.id
  end
end

AdminUser.create!(email: 'admin@myloc.com', password: '123456', password_confirmation: '123456')