class ChangeInitiativeValuation < ActiveRecord::Migration[7.0]
  def change
    change_column_default :initiatives, :valuation, 0.00
  end
end
