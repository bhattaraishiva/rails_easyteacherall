require 'rails_helper'

RSpec.describe "batches/index", type: :view do
  before(:each) do
    assign(:batches, [
      Batch.create!(
        :batchname => "Batchname",
        :batchdescription => "MyText"
      ),
      Batch.create!(
        :batchname => "Batchname",
        :batchdescription => "MyText"
      )
    ])
  end

  it "renders a list of batches" do
    render
    assert_select "tr>td", :text => "Batchname".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
