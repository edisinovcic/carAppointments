class User < ApplicationRecord
  has_many :appointments
  has_many :credit_cards
end
