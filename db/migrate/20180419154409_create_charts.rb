class CreateCharts < ActiveRecord::Migration[5.1]
  def change
    create_table :charts do |t|
      t.string :name
      t.integer :year
      t.integer :quarter
      t.string :image_q
      t.string :image_y
      t.belongs_to :ticker, foreign_key: true

      t.timestamps
    end
    add_index :charts, [:name, :year, :quarter], unique: true    

  end
end
