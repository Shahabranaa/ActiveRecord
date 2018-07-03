class Product < ApplicationRecord

  after_create do |product|
      puts "You have initialized an object!"
    end
    around_save do |product|
      puts "Object is being saved"
end
