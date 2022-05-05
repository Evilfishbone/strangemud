require 'rails_helper'

RSpec.describe "NewStuffs", type: :request do
  
  describe "get index" do
    it "should have content 'The News!'" do
      visit new_stuffs_path
      expect(page).to have_css('h1', :text => 'The News!')
    end
  end
  
  describe "GET /new" do
    it "returns a successful response" do
      get new_new_stuff_url
      expect(response).to be_successful
    end
  end
end
