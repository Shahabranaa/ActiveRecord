# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 5 }
  validates :price, presence: true,
                    length: { maximum: 4 }
end
