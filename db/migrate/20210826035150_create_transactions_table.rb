class CreateTransactionsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.date :occurrence_date
      t.numeric :amount
      t.string :cpf, :limit => 11
      t.string :card_number, :limit => 12
      t.string :occurrence_time, :limit => 6

      t.timestamps
    end
  end
end
