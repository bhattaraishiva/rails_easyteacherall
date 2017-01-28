class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :courses, :coursecode, :coursecode_id
    rename_column :courses, :batch, :batch_id
    rename_column :courses, :studentclass, :studentclass_id
    rename_column :courses, :studentsection, :studentsection_id
  end
end
