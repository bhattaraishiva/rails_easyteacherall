require 'rails_helper'

RSpec.describe "coursecodes/show", type: :view do
  before(:each) do
    @coursecode = assign(:coursecode, Coursecode.create!(
      :codename => "Codename"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Codename/)
  end
end
