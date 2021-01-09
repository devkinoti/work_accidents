class CreateDamageLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :damage_levels do |t|
      t.references :accident, null: false, foreign_key: true
      t.string :damage_code
      t.string :seriousness_level

      t.timestamps
    end
  end
end
