class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :owner
      t.string :name
      t.decimal :amount_total, :default => 0

      t.timestamps
    end
  end
end
