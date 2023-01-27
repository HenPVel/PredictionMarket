class Initiative < ApplicationRecord
  belongs_to :user
  has_many :investments

  def calculate_total_invested
    self.investments.sum { |i| i.amount }
  end
end
