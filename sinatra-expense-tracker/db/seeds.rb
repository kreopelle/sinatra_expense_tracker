users = [
{username: "pickleboy", email: "pickles@duh.com", password: "pickles"},
{username: "winston22", email: "puppydog@fetch.com", password: "tail_wagger"},
{username: "climbing_gurl", email: "climbing_gurl@gmail.com", password: "hiker4lyfe"}
]

users.each do |user|
  User.create(user)
end

expenses = [
  {vendor: "Rogan's Corner", description: "Production Meals", date: 06/01/16, total: 3.78, user_id: 1},
  {vendor: "Luna", description: "Production Meals", date: 06/01/16, total: 19.30, user_id: 1},
  {vendor: "Tops Market", description: "Production Meals", date: 06/02/16, total: 8.67, user_id: 1},
  {vendor: "Shot Put Pro", description: "Digital Imaging Technician Software", date: 06/3/16, total: 49.50, user_id: 1},
  {vendor: "Wawa", description: "Production Meals", date: 06/16/16, total: 4.75, user_id: 1},
  {vendor: "Sunoco", description: "Gas", date: 06/22/16, total: 17.09, user_id: 1},
  {vendor: "Green Street Garage", description: "Parking", date: 06/11/16, total: 3.00, user_id: 2},
  {vendor: "Green Street Garage", description: "Parking", date: 06/01/16, total: 7.00, user_id: 2},
  {vendor: "Green Street Garage", description: "Parking", date: 06/12/16, total: 4.00, user_id: 2},
  {vendor: "C&C Tobacco Outlet", description: "Prop purchase", date: 06/19/16, total: 27.07, user_id: 2},
  {vendor: "Green Street Garage", description: "Parking", date: 06/17/16, total: 1.00, user_id: 2},
  {vendor: "Wegmans", description: "Production Meals", date: 06/20/16, total: 11.56, user_id: 2},
  {vendor: "Alcone", description: "Makeup Purchase", date: 05/25/16, total: 470.07, user_id: 3},
  {vendor: "Make-up Designory", description: "Makeup Purchase", date: 05/31/16, total: 193.49, user_id: 3},
  {vendor: "Mane Beauty", description: "Hair Purchase", date: 05/31/16, total: 428.85, user_id: 3},
  {vendor: "Alcone", description: "Makeup Purchase", date: 06/1/16, total: 93.21, user_id: 3},
  {vendor: "Sally Beauty Company", description: "Makeup Purchase", date: 06/4/16, total: 27.43, user_id: 3},
  {vendor: "Casadilla", description: "Makeup Purchase", date: 06/15/16, total: 60.48, user_id: 3},
  {vendor: "Sunoco", description: "Gas", date: 06/24/16, total: 25.37, user_id: 3},
  {vendor: "Sew Green", description: "Makeup Purchase", date: 05/20/16, total: 7.52, user_id: 3},
  {vendor: "NY Studio 108", description: "Studio haircut", date: 06/10/16, total: 42.00, user_id: 3},
  {vendor: "Nicholas Carbonaro Hair", description: "On set haircut", date: 06/05/16, total: 42.00, user_id: 3},
  {vendor: "NY Studio 108", description: "Dye job", date: 06/05/16, total: 55.00, user_id: 3}
]

expenses.each do |expense|
  Expense.create(expense)
end
