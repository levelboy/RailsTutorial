require 'spec_helper'

describe PagesController do
  render_views

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
                      :content => "Growing Mist | Home")
    end
  end

  describe "'contact' page" do
    it "should have correct title" do
      get 'contact'
      response.should have_selector("title",
                      :content => "Growing Mist | Contact")
    end
  end

  describe "'about' page" do
    it "should have correct title" do
      get 'about'
      response.should have_selector("title",
                      :content => "Growing Mist | About")
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
                      :content => "Growing Mist | Help")
    end
  end


end
