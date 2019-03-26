
maker_seeds = [
  {id: 1, username: "RajGlass", first_name: "Raj", last_name: "Singh", gender: "Male", age: 28, email: "rajsglass@gmail", phone_number: "(123) 456 - 7890", bio: "Kiss my glass.", city: "Boston"},
  {id: 2, username: "Angelus", first_name: "Corey", last_name: "Angelus", gender: "Male", age: 26, email: "angelusproductions@gmail", phone_number: "(617) 549 - 9108", bio: "Kiss my ass.", city: "Boston"}
]

makerspace_seeds = [
  {id: 1, name: "Hatch", street: "101 Summer Street", city: "Boston", country: "USA", zip_code: 02472, website: "https://www.watertownlib.org/hatch", email: "lizcoordinator@gmail.com", mission: "Free access for all."},
  {id: 2, name: "Launch Academy", street: "77 Summer Street", city: "Boston", country: "USA", zip_code: 02111, website: "https://launchacademy.com/", email: "brianna@launch.com", mission: "Turn from non-coder to programmer in 3 months."}
]

membership_seeds = [
  {maker_id: 1, makerspace_id: 1, payment_plan_id: 1},
  {maker_id: 2, makerspace_id: 2, payment_plan_id: 2}
]

maker_seeds.each do |seed|
  Maker.create!(seed)
end

makerspace_seeds.each do |seed|
  Makerspace.create!(seed)
end

membership_seeds.each do |seed|
  Membership.create!(seed)
end
