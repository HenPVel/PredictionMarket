class CreateInvestments < ActiveRecord::Migration[7.0]
  def change
    create_table :investments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :initiative, null: false, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
