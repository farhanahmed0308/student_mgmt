class AddDobToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :DOB, :date
  end
end
