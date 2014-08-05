require 'rails_helper'

RSpec.describe "Tips", :type => :request do
  describe "GET /tips" do
    it "works! (now write some real specs)" do
      get tips_path
      expect(response.status).to be(200)
    end
  end
end
