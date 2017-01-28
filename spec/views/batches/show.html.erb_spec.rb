require 'rails_helper'

RSpec.describe "batches/show", type: :view do
  before(:each) do
    @batch = assign(:batch, Batch.create!(
      :batchname => "Batchname",
      :batchdescription => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Batchname/)
    expect(rendered).to match(/MyText/)
  end
end
