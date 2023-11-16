puts "start create restaurant"
restaurants = [
 {name: "Dishoom",
   address: "7 Boundary St, London E2 7JE",
   phone_number: "06.36.78.90.44",
   category: "french"},
{name: "Pizza East",
    address: "56A Shoreditch High St, London E1 6PQ",
    phone_number: "06.36.78.90.44",
    category: "belgian"},
{name: "Madona Me",
     address: "88 Rue Balguerie, Bordeaux",
     phone_number: "06.36.78.90.44",
     category: "italian"},
{name: "l'Accolade",
     address: "27 Rue Sainte Catherine, Bordeaux ",
     phone_number: "06.36.78.90.44",
     category: "japanese"},
{name: "Bistrot 9",
      address: "34 rue Saint Merry, Fontainebleau",
      phone_number: "06.36.78.90.44",
      category: "french"}
]

[restaurants].each do |attributes|
  restaurant = Restaurant.create!(attributes)
end

puts "end of seed"
