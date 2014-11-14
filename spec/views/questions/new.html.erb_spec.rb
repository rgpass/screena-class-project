require 'rails_helper'

RSpec.describe "questions/new", :type => :view do
  before(:each) do
    assign(:question, Question.new(
      :name => "MyString",
      :label => "MyString",
      :inputType => "MyString"
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_name[name=?]", "question[name]"

      assert_select "input#question_label[name=?]", "question[label]"

      assert_select "input#question_inputType[name=?]", "question[inputType]"
    end
  end
end
