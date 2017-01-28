require 'rails_helper'

RSpec.describe "studentsections/new", type: :view do
  before(:each) do
    assign(:studentsection, Studentsection.new(
      :studentsection => "MyString"
    ))
  end

  it "renders new studentsection form" do
    render

    assert_select "form[action=?][method=?]", studentsections_path, "post" do

      assert_select "input#studentsection_studentsection[name=?]", "studentsection[studentsection]"
    end
  end
end
