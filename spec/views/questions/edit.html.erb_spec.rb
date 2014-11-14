require 'rails_helper'

RSpec.describe "questions/edit", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :name => "MyString",
      :label => "MyString",
      :inputType => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_name[name=?]", "question[name]"

      assert_select "input#question_label[name=?]", "question[label]"

      assert_select "input#question_inputType[name=?]", "question[inputType]"
    end
  end
end
