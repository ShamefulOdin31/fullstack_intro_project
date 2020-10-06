# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Race.destroy_all
Race.reset_pk_sequence
CharClass.destroy_all
CharClass.reset_pk_sequence
Character.destroy_all
Character.reset_pk_sequence

races_file = Rails.root + "db/races.csv"
classes_file = Rails.root + "db/classes.csv"

races = SmarterCSV.process(races_file)
classes = SmarterCSV.process(classes_file)

# Creates Race records
races.each do |race|
  new_race = Race.find_or_create_by(race: race[:name])
  new_race.save
end

# Creates CharClass records
classes.each do |class_char|
  new_class = CharClass.find_or_create_by(name: class_char[:name])
  new_class.save
end

# Creates Character records
for i in 0..200
  # Gets random class id
  class_count = CharClass.count
  random_number = rand(class_count)
  random_class = CharClass.offset(random_number).first

  # Gets random race id
  race_count = Race.count
  random_number_race = rand(race_count)
  random_race = Race.offset(random_number_race).first

  new_char = random_class.characters.create(
    :name => Faker::Name.name,
    :race_id => random_race.id,
    :str => Faker::Number.between(from: 1, to: 20),
    :inte => Faker::Number.between(from: 1, to: 20),
    :dex => Faker::Number.between(from: 1, to: 20),
    :wis => Faker::Number.between(from: 1, to: 20),
    :con => Faker::Number.between(from: 1, to: 20),
    :cha => Faker::Number.between(from: 1, to: 20)
  )
  new_char.save
end