class CreateLannisters < ActiveRecord::Migration[5.2]
  def change
    create_table :lannisters do |t|
      t.string :first_name
      t.integer :age
      t.timestamps
    end
  end
end
