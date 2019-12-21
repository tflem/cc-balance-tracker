class CreateBalances < ActiveRecord::Migration[6.0]
  def change
    create_table :balances do |t|
      t.string :cc_name
      t.float :cc_balance
      t.date :cc_due_date

      t.timestamps
    end
  end
end
