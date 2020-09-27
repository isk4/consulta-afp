class CreateUfs < ActiveRecord::Migration[5.2]
  def change
    create_table :ufs do |t|
      t.integer :month, null: false
      t.integer :day, null: false
      t.float :value, null: false

      t.timestamps
    end
  end
end
