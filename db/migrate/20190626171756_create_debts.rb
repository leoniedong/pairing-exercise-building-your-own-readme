class CreateDebts < ActiveRecord::Migration[5.2]
  def change
    create_table :debts do |t|
      t.string :name
      t.integer :amount
      t.integer :lannister_id
      t.timestamps
    end
  end
end
