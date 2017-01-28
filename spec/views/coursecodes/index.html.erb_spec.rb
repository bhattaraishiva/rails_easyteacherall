require 'rails_helper'

RSpec.describe "coursecodes/index", type: :view do
  before(:each) do
    assign(:coursecodes, [
      Coursecode.create!(
        :codename => "Codename"
      ),
      Coursecode.create!(
        :codename => "Codename"
      )
    ])
  end

  it "renders a list of coursecodes" do
    render
    assert_select "tr>td", :text => "Codename".to_s, :count => 2
  end
end
