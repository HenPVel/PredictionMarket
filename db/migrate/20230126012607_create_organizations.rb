class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :numberOfEmployees
      t.string :industry

      t.timestamps
    end
  end
end
