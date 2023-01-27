class AddValuationToInitiative < ActiveRecord::Migration[7.0]
  def change
    add_column :initiatives, :valuation, :float
  end
end
