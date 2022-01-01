class CreateTmpEpss < ActiveRecord::Migration[5.1]
  def change
    create_table :tmp_epss do |t|
      t.string :name
      t.integer :year
      t.integer :quarter
      t.integer :q_amt
      t.integer :y_amt
      t.integer :aq_amt
      t.integer :ay_amt
      t.decimal :q_eps, precision: 8, scale: 6
      t.decimal :y_eps, precision: 8, scale: 6
      t.decimal :aq_eps, precision: 8, scale: 6
      t.decimal :ay_eps, precision: 8, scale: 6
      t.belongs_to :ticker, foreign_key: true

    end
    add_index :tmp_epss, [:name, :year, :quarter], unique: true
  end
end
