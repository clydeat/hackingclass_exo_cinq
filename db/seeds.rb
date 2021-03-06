# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

3.times do
	course = Course.create(title: Faker::OnePiece.island, description: Faker::ChuckNorris.fact)
end
10.times do	
	student = Student.create(first_name: Faker::DragonBall.character, last_name: Faker::Lovecraft.tome, course_id: Faker::Number.between(1, Course.last.id))
end
