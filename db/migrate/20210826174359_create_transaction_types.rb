class CreateTransactionTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :transaction_types do |t|
      t.integer :numeric_type
      t.text :description
      t.integer :operation_type
      t.integer :signal

      t.timestamps
    end
  end
end
