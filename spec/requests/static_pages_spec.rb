require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', 
                       :text => 'Sample App')
    end #do
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                       :text => "#{base_title}")
    end #do
    
    it "should not have a custom title" do
      visit '/static_pages/home'
      page.should_not have_selector('title',
                           :text => 'Home |')
    end #do
  end #do

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1',
                       :text => 'Help')
    end# do
    
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                       :text => "Help | #{base_title}")
    end #do
  end #do

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', 
                       :text => 'About Us')
    end #do
    
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                       :text => "About Us | #{base_title}")
    end #do
  end #do
  
  describe "Contact page" do
    
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1',
                       :text => "Contact")
    end #do
    
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                       :text => "Contact | #{base_title}")
    end #do
  end #do
end #do
