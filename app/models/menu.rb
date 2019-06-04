class Menu < ApplicationRecord
  has_many :foods
  has_many :orders
  has_many :users, through: :orders
end
