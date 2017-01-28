require 'rails_helper'

RSpec.describe "coursecodes/edit", type: :view do
  before(:each) do
    @coursecode = assign(:coursecode, Coursecode.create!(
      :codename => "MyString"
    ))
  end

  it "renders the edit coursecode form" do
    render

    assert_select "form[action=?][method=?]", coursecode_path(@coursecode), "post" do

      assert_select "input#coursecode_codename[name=?]", "coursecode[codename]"
    end
  end
end
