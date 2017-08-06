describe User do
  it { should have_many :posts }
  it { should have_many :comments }
  it { should have_many :votes }
  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username }
  it { should validate_presence_of :password }

  describe '#is_admin?' do
    it "should return true if user is admin" do
      admin = Fabricate(:user, role: "admin")
      expect(admin.is_admin?).to be true
    end

    it "should return false if user is not admin" do
      user = Fabricate(:user)
      expect(user.is_admin?).to be false
    end
  end

  it "should creates slug" do
    user = Fabricate(:user)
    expect(user.slug).not_to be_nil
  end
end