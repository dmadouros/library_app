require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the content 'The Library'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'The Library')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: "The Library :: Home")
    end
  end
end
