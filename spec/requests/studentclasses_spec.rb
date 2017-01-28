require 'rails_helper'

RSpec.describe "Studentclasses", type: :request do
  describe "GET /studentclasses" do
    it "works! (now write some real specs)" do
      get studentclasses_path
      expect(response).to have_http_status(200)
    end
  end
end
