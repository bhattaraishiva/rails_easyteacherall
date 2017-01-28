require 'rails_helper'

RSpec.describe "studentsections/edit", type: :view do
  before(:each) do
    @studentsection = assign(:studentsection, Studentsection.create!(
      :studentsection => "MyString"
    ))
  end

  it "renders the edit studentsection form" do
    render

    assert_select "form[action=?][method=?]", studentsection_path(@studentsection), "post" do

      assert_select "input#studentsection_studentsection[name=?]", "studentsection[studentsection]"
    end
  end
end
