class CreateQtProfits < ActiveRecord::Migration[5.1]
  def change
    create_table :qt_profits do |t|
      t.string :name
      t.integer :year
      t.string :quarter
      t.integer :latest_amt
      t.integer :previous_amt
      t.integer :inc_amt
      t.decimal :inc_pct
      t.belongs_to :ticker, foreign_key: true

    end
    add_index :qt_profits, [:name, :year, :quarter], unique: true    
  end
end