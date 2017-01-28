require 'rails_helper'

RSpec.describe "studentclasses/edit", type: :view do
  before(:each) do
    @studentclass = assign(:studentclass, Studentclass.create!(
      :studentclass => "MyString"
    ))
  end

  it "renders the edit studentclass form" do
    render

    assert_select "form[action=?][method=?]", studentclass_path(@studentclass), "post" do

      assert_select "input#studentclass_studentclass[name=?]", "studentclass[studentclass]"
    end
  end
end
