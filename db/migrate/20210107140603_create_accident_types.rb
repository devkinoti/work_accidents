class CreateAccidentTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :accident_types do |t|
      t.references :accident, null: false, foreign_key: true
      t.text :accident_type_description

      t.timestamps
    end
  end
end
