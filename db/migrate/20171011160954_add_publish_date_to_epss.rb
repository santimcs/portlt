class AddPublishDateToEpss < ActiveRecord::Migration[5.1]
  def change
    add_column :epss, :publish_date, :date
  end
end
