class Organization < ApplicationRecord
    has_many :users
    has_many :initiatives, through: :users
end
