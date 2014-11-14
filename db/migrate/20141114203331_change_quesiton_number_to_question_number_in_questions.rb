class ChangeQuesitonNumberToQuestionNumberInQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :quesitonNumber, :questionNumber
  end
end
