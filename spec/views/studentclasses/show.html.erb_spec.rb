require 'rails_helper'

RSpec.describe "studentclasses/show", type: :view do
  before(:each) do
    @studentclass = assign(:studentclass, Studentclass.create!(
      :studentclass => "Studentclass"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Studentclass/)
  end
end
