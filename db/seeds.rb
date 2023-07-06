# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

student = Student.create(first_name: "farhan", last_name: "zulfiqar", email: "farhan@gmail.com", date_of_birth: "2015-12-12")

20.times do |i|
puts "studnet #{i} created successfully"
    Student.create(
        first_name: "F_studnet#{i + 1}",
        last_name: "L_studnet#{i + 1}",
        email: "Student#{i + 1} email",
        date_of_birth: "DOB of #{i + 1} student"
    )
end
a = nil
b = 5
 a || = b