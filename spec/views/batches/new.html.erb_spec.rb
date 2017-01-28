require 'rails_helper'

RSpec.describe "batches/new", type: :view do
  before(:each) do
    assign(:batch, Batch.new(
      :batchname => "MyString",
      :batchdescription => "MyText"
    ))
  end

  it "renders new batch form" do
    render

    assert_select "form[action=?][method=?]", batches_path, "post" do

      assert_select "input#batch_batchname[name=?]", "batch[batchname]"

      assert_select "textarea#batch_batchdescription[name=?]", "batch[batchdescription]"
    end
  end
end
