require 'rails_helper'

RSpec.describe "NewStuffs", type: :request do
  describe "GET /new" do
    it "returns a successful response" do
      get new_new_stuff_url
      expect(response).to be_successful
    end
  end
end
