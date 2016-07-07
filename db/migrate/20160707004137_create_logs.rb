class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.datetime :open_date
      t.datetime :close_date
      t.integer :entry_price
      t.string :currency_pairs
      t.decimal :position_size
      t.decimal :stop_loss
      t.integer :take_profit
      t.string :direction
      t.integer :exit_price
      t.integer :risk_reward
      t.string :win_loss
      t.float :loss_amount
      t.float :profit_amount
      t.float :loss_percent
      t.decimal :profit_percent
      t.integer :balance
      t.text :signal
      t.text :comment
      t.references :user, index: true

      t.timestamps
    end
  end
end
