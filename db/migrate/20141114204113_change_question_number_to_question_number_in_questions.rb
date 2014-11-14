class ChangeQuestionNumberToQuestionNumberInQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :questionNumber, :question_number
  end
end
