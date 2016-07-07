class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.text :description
      t.decimal :amount
      t.datetime :date
      t.references :user, index: true

      t.timestamps
    end
  end
end
