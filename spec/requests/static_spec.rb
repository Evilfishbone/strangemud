require 'rails_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the content 'Homepage'" do
      visit root_path
      expect(page).to have_css('h1', :text => 'Homepage')
    end
    
  end
  
  describe "About page" do
    
    it "should have the content 'About'" do
      visit about_path
      expect(page).to have_css('h1', :text => 'About')
    end
    
  end
   
end