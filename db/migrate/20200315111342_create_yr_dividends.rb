class CreateYrDividends < ActiveRecord::Migration[5.1]
  def change
    create_table :yr_dividends do |t|
      t.string :name
      t.integer :year
      t.decimal :dividend, precision: 6, scale: 4
      t.belongs_to :ticker, foreign_key: true

    end
    add_index :yr_dividends, [:name, :year], unique: true
  end
end
