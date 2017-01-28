require 'rails_helper'

RSpec.describe "studentclasses/index", type: :view do
  before(:each) do
    assign(:studentclasses, [
      Studentclass.create!(
        :studentclass => "Studentclass"
      ),
      Studentclass.create!(
        :studentclass => "Studentclass"
      )
    ])
  end

  it "renders a list of studentclasses" do
    render
    assert_select "tr>td", :text => "Studentclass".to_s, :count => 2
  end
end
