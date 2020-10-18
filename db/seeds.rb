# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# === Create drivers ===

guilherme = Driver.create({
  name: 'Guilherme Carreiro',
  points: 16,
  age: 28,
  picture_url: 'http://karreiro.com/assets/profile-picture.png'
})

alex = Driver.create({
  name: 'Alex Porcelli',
  points: 15,
  age: 33,
  picture_url: 'https://porcelli.me/images/minibio.jpg'
})

karina = Driver.create({
  name: 'Karina Varela',
  points: 12,
  age: 29,
  picture_url: 'https://s3-sa-east-1.amazonaws.com/thedevconf/photos/43a0856c03f96c864efda9fdcfcefe0166e58a1a.55.40%20cropped.png'
})


# === Create violations ===

Violation.create(driver: guilherme, violation_type: 'speed', actual_speed: 121, speed_limit: 60)
Violation.create(driver: guilherme, violation_type: 'speed', actual_speed: 132, speed_limit: 40)
Violation.create(driver: guilherme, violation_type: 'speed', actual_speed: 72, speed_limit: 60)
Violation.create(driver: guilherme, violation_type: 'speed', actual_speed: 43, speed_limit: 40)

Violation.create(driver: alex, violation_type: 'speed', actual_speed: 121, speed_limit: 60)
Violation.create(driver: alex, violation_type: 'speed', actual_speed: 132, speed_limit: 40)
Violation.create(driver: alex, violation_type: 'speed', actual_speed: 111, speed_limit: 60)

Violation.create(driver: karina, violation_type: 'speed', actual_speed: 130, speed_limit: 60)
Violation.create(driver: karina, violation_type: 'speed', actual_speed: 112, speed_limit: 40)
Violation.create(driver: karina, violation_type: 'parking', actual_speed: 0, speed_limit: 0)
