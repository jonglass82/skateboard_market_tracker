# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

namespace :import do
    
    desc "import eBay sales"
    task sales: :environment do
        
        sales = File.join Rails.root, 'data.csv'
        CSV.foreach(sales)
        
    end
    
end