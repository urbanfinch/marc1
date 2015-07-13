# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

unless Rails.env.production?

  user = FactoryGirl.create(:user, :email => 'example@example.com')

  (1..10).each do
    category = FactoryGirl.create(:category)

    (1..10).each do
      product = FactoryGirl.create(:product, :category => category)
    end
  end

else

  user = FactoryGirl.create(:user, :email => 'example@example.com')

end
