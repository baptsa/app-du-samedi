class Bar < ApplicationRecord

has_many :reviews
validates :name, presence: true
validates :address, presence: true
validates :description, presence: true
validates :description, length: { minimum: 10 }


end
