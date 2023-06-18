class RemoveColumnFromStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :DOB, :string
  end
end
