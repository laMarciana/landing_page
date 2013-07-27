require 'spec_helper' 

module LandingPage
  describe UsersController do
    describe "#create" do
      context "when valid email is given" do
        before :each do
          post :create, use_route: 'landing_page', user: {email: 'valid@email.com'}
        end
        it "render #new template" do
          expect(response).to render_template :new
        end
        it "flash a success message" do
          expect(flash[:success]).to_not be_nil
        end
      end
      context "when invalid email is given" do
        before :each do
          post :create, use_route: 'landing_page', user: {email: 'invalid_email'}
        end
        it "render #new template" do
          expect(response).to render_template :new
        end
        it "flash an error message" do
          expect(flash[:error]).to_not be_nil
        end
      end
    end
  end
end