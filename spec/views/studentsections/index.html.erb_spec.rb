require 'rails_helper'

RSpec.describe "studentsections/index", type: :view do
  before(:each) do
    assign(:studentsections, [
      Studentsection.create!(
        :studentsection => "Studentsection"
      ),
      Studentsection.create!(
        :studentsection => "Studentsection"
      )
    ])
  end

  it "renders a list of studentsections" do
    render
    assert_select "tr>td", :text => "Studentsection".to_s, :count => 2
  end
end
