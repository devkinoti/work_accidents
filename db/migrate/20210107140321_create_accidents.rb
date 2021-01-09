class CreateAccidents < ActiveRecord::Migration[6.1]
  def change
    create_table :accidents do |t|
      t.text :accident_description
      t.datetime :accident_date
      t.string :accident_location

      t.timestamps
    end
  end
end
