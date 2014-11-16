require 'rails_helper'

RSpec.describe "questions/edit", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :name => "MyString",
      :label => "MyString",
      :input_type => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_name[name=?]", "question[name]"

      assert_select "input#question_label[name=?]", "question[label]"

      assert_select "input#question_input_type[name=?]", "question[input_type]"
    end
  end
end
