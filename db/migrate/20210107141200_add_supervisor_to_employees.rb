class AddSupervisorToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :supervisor, foreign_key: {to_table: :employees}
  end
end
