class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :label
      t.string :input_type
      t.integer :quesitonNumber

      t.timestamps
    end
  end
end
