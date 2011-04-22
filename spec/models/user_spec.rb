require 'spec_helper'

describe User do
  let(:user) {Factory(:user)}
  before :each do
    User.delete_all
  end

  context "Registration" do
    it "should create user with valid data" do
      user
      User.find(:all, :conditions => {:email => "user@example.org"}).should_not be_empty
    end
    it "should not create user with empty password" do
      User.create :email => "user@example.org", :password => ""
      User.all.should be_empty
    end
    it "should not create user with empty email" do
      User.create :email => "", :password => "password"
      User.all.should be_empty
    end
    it "should not create user with not unique email" do
      user
      User.create :email => "user@example.org"
      User.find(:all, :conditions => {:email => "user@example.org"}).should have(1).element
    end
  end
end
