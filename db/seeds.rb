require 'faker'

User.delete_all
Location.delete_all
Spend.delete_all
Supplier.delete_all

#user
5.times do
  User.create(:username => Faker::Internet.user_name,
              :email => Faker::Internet.email,
              :password => 'password')

end

#location
5.times do
  Location.create(:name => Faker::Company.name,
                  :city => Faker::Address.city)
end

#Spends

5.times do
  Spend.create(:location_id => rand(1..5),
               :supplier_id => rand(1..5),
               :amount => Faker::Number.number(4))

end


#Suppliers

5.times do
  Supplier.create(:name => Faker::Company.name,
                  :city => Faker::Address.city)
end
