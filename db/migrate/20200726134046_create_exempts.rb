class CreateExempts < ActiveRecord::Migration[5.1]
  def change
    create_table :exempts do |t|
      t.string :name

    end
    add_index :exempts, [:name], unique: true
  end
end
