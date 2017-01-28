require 'rails_helper'

RSpec.describe "batches/edit", type: :view do
  before(:each) do
    @batch = assign(:batch, Batch.create!(
      :batchname => "MyString",
      :batchdescription => "MyText"
    ))
  end

  it "renders the edit batch form" do
    render

    assert_select "form[action=?][method=?]", batch_path(@batch), "post" do

      assert_select "input#batch_batchname[name=?]", "batch[batchname]"

      assert_select "textarea#batch_batchdescription[name=?]", "batch[batchdescription]"
    end
  end
end
