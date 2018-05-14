class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :country, foreign_key: true
      t.belongs_to :state, foreign_key: true

      t.timestamps
    end
  end
end
