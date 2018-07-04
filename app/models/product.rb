class Product < ApplicationRecord
  has_many :reviews

  after_create do |product|
      puts 'You have initialized an object!'
    end
    around_save do |product|
      puts 'Object is being saved'
    end
end
