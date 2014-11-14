class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :label
      t.string :inputType
      t.integer :questionNumber

      t.timestamps
    end
  end
end
