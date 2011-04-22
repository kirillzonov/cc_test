describe User do
  let(:user) {Factory(:user)}
  before :each do
    User.delete_all
  end

  context "Registration" do
    it "should create user if valid data" do
      #lambda { User.create( :email => "user@example.org", :password => "password", :password_confirmation => "password") }
      user.should change(User.all, :count)
    end
    it "should create user with valid data" do
      user
      User.find(:conditions => {:email => "user@example.org"}).should_not be_empty
    end
    it "should not create user with invalid data" do
      user.should_not change(User.all, :count)
    end
  end
end
