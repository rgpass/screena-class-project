class Changeinput_typeToinput_typeInQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :input_type, :input_type
  end
end
