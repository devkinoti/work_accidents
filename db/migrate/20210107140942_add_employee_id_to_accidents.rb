class AddEmployeeIdToAccidents < ActiveRecord::Migration[6.1]
  def change
    add_reference :accidents, :employee, null: false, foreign_key: true
  end
end
