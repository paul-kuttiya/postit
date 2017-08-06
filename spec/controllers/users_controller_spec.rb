describe UsersController do
  describe "GET #new" do
    it "should render new form" do
      get :new
      expect(response).to render_template :new
    end

    it "should redirect to root path for signed in user" do
      session[:user_id] = Fabricate(:user).id
      get :new
      expect(response).to redirect_to root_path
    end
  end
end