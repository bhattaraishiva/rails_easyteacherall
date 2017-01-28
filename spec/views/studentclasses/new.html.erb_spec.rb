require 'rails_helper'

RSpec.describe "studentclasses/new", type: :view do
  before(:each) do
    assign(:studentclass, Studentclass.new(
      :studentclass => "MyString"
    ))
  end

  it "renders new studentclass form" do
    render

    assert_select "form[action=?][method=?]", studentclasses_path, "post" do

      assert_select "input#studentclass_studentclass[name=?]", "studentclass[studentclass]"
    end
  end
end
