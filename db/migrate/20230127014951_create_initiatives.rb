class CreateInitiatives < ActiveRecord::Migration[7.0]
  def change
    create_table :initiatives do |t|
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :department

      t.timestamps
    end
  end
end
