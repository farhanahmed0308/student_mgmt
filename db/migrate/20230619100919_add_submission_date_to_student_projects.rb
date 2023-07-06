class AddSubmissionDateToStudentProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :student_projects, :submission_date, :date
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
