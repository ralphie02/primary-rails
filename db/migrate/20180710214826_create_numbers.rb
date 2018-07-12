class CreateNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :numbers do |t|
      t.integer :value, null: false, limit: 8
      t.boolean :is_prime

      t.timestamps null: false
    end

    add_index :numbers, :value, unique: true
  end
end
