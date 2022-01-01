class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :year
      t.integer :quarter
      t.date :publish_date
      t.integer :hour
      t.belongs_to :ticker, foreign_key: true

      t.timestamps
    end
    add_index :items, [:name, :year, :quarter], unique: true
  end
end
