require 'rails_helper'

RSpec.describe "coursecodes/new", type: :view do
  before(:each) do
    assign(:coursecode, Coursecode.new(
      :codename => "MyString"
    ))
  end

  it "renders new coursecode form" do
    render

    assert_select "form[action=?][method=?]", coursecodes_path, "post" do

      assert_select "input#coursecode_codename[name=?]", "coursecode[codename]"
    end
  end
end
