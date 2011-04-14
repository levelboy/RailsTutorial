require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @generic_title = "Growing Mist | "
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  describe "'home' page" do
    it "should have correct title" do
      get 'home'
      response.should have_selector("title",
                      :content => @generic_title.concat("Home"))
    end
  end

  describe "'contact' page" do
    it "should have correct title" do
      get 'contact'
      response.should have_selector("title",
                      :content => @generic_title.concat("Contact"))
    end
  end

  describe "'about' page" do
    it "should have correct title" do
      get 'about'
      response.should have_selector("title",
                      :content => @generic_title.concat("About"))
    end
  end

  describe "Get 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_successful
    end
  end

  describe "help page" do
    it "should have correct title" do
      get 'help'
      response.should have_selector("title",
                      :content => @generic_title.concat("Help"))
    end
  end
end
