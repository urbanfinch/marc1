# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

unless Rails.env.production?
  
  user = Factory.create(:user, :email => 'example@example.com')
  
  (1..10).each do
    category = Factory.create(:category)
    
    (1..10).each do
      product = Factory.create(:product, :category => category)
    end
  end
  
else
  
  user = Factory.create(:user, :email => 'example@example.com')
  
end