# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveSupport::Base.transaction do
  ActiveSupport::JSON.decode(File.read('localData/10.json')).each do |a|
    Geoid2010.create!(a)
  end

  # ActiveSupport::JSON.decode(File.read('localData/dataMap.json')).each do |a|
  #   Demographic.create!(a)
  # end
end
