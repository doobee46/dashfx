class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.date :open
      t.date :close
      t.integer :price
      t.string :pairs
      t.decimal :lot
      t.decimal :sl
      t.integer :tp
      t.string :direction
      t.integer :exit
      t.integer :risk_reward
      t.string :win_loss
      t.decimal :loss
      t.decimal :profit
      t.decimal :loss_percent
      t.decimal :profit_percent
      t.integer :balance
      t.string :strategy
      t.text :notes
      t.references :user, index: true

      t.timestamps
    end
  end
end
