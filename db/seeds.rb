# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

website = Committee.create(
  name: 'Website',
  description: 'Nizzle ipsum dolizzle you son of a bizzle you son of a bizzle.'
)

admin = User.new(
  first_name: 'Oski',
  last_name: 'Bear',
  email: 'oski@berkeley.edu',
  password: 'tester123',
  is_administrator: true
)

admin.face = File.new("test/fixtures/face.png")
admin.committee = website;
admin.save!

me = User.new(
  first_name: 'Pranava',
  last_name: 'Adduri',
  email: 'padduri@berkeley.edu',
  password: 'tester123',
)

me.face = File.new("test/fixtures/face.png")
me.committee = website;
me.save!

website.director = me
website.save!