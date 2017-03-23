# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# users = User.create!([
#   { user_name: 'zach', password: 'password' },
#   { user_name: 'john', password: 'password' },
#   { user_name: 'rob', password: 'password' },
#   { user_name: 'allie', password: 'password' },
#   { user_name: 'bre', password: 'password' },
#   { user_name: 'charlie', password: 'password' },
#   { user_name: 'glenn', password: 'password' },
#   { user_name: 'mary', password: 'password' },
#   { user_name: 'chris', password: 'password' },
#   { user_name: 'adam', password: 'password' },
#   { user_name: 'sarah', password: 'password' }
# ])
#

cats = Cat.create!([
  { name: 'Hans', birth_date: '1994-10-01', color: 'black', user_id: 1, description: "I'm an ugly cat", sex: 'M'},
  { name: 'Frans', birth_date: '1994-09-02', color: 'white', user_id: 2, description: "I'm a pretty cat", sex: 'M'},
  { name: 'Bronse', birth_date: '1994-08-03', color: 'orange', user_id: 3, description: "I'm a mean cat", sex: 'M'},
  { name: 'Mans', birth_date: '1994-07-04', color: 'brown', user_id: 1, description: "I'm a cute cat", sex: 'M'},
  { name: 'Jerry', birth_date: '1994-06-05', color: 'black', user_id: 2, description: "I'm a gentle cat", sex: 'M'},
  { name: 'Nala', birth_date: '1994-05-06', color: 'white', user_id: 3, description: "I'm a wild cat", sex: 'F'},
  { name: 'Simba', birth_date: '1994-04-07', color: 'orange', user_id: 1, description: "I'm a tom cat", sex: 'M'},
  { name: 'Kitty', birth_date: '1994-03-08', color: 'brown', user_id: 2, description: "I'm a stupid cat", sex: 'F'},
  { name: 'Petri', birth_date: '1994-02-09', color: 'black', user_id: 1, description: "I'm a fat cat", sex: 'M'},
  { name: 'Diva', birth_date: '1994-01-10', color: 'white', user_id: 1, description: "can I haz cheezburger??", sex: 'F'}
])
