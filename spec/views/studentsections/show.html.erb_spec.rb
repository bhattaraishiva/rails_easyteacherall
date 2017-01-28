require 'rails_helper'

RSpec.describe "studentsections/show", type: :view do
  before(:each) do
    @studentsection = assign(:studentsection, Studentsection.create!(
      :studentsection => "Studentsection"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Studentsection/)
  end
end
