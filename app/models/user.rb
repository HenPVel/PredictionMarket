class User < ApplicationRecord
    belongs_to :organization
    has_many :initiatives
    has_many :investments
end
