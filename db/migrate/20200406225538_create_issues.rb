class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.string :name
      t.text :description
      t.references :balance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
