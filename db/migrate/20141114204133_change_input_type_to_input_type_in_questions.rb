class ChangeinputTypeToinput_typeInQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :inputType, :input_type
  end
end
