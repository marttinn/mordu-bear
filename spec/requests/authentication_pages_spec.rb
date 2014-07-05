require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Inicia Sesión') }
    it { should have_title('Inicio de Sesión') }

  end

  describe "signin" do
    before { visit signin_path }

    describe "with INvalid information" do
      before { click_button "Iniciar Sesión" }

      it { should have_title('Inicio de Sesión') }
      it { should have_selector('div.alert.alert-error') }
    end #fin with invalid information

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Correo Electrónico",    with: user.email
        fill_in "Contraseña", with: user.password
        click_button "Iniciar Sesión"
      end

      it { should have_title(user.name) }
      it { should have_link('Perfil',     href: user_path(user)) }
      it { should have_link('Editar',    href: edit_user_path(user)) }
      it { should have_link('Cerrar Sesión',    href: signout_path) }
      it { should_not have_link('Iniciar Sesión', href: signin_path) }

      describe "followed by signout" do
        before { click_link "Cerrar Sesión" }
        it { should have_link('Iniciar Sesión') }
      end #fin followed by signout

    end #fin with valid information

  end# fin sign in

  describe "authorization" do

    describe "for non-signed-in users" do
      let(:user) { FactoryGirl.create(:user) }

      describe "in the Users controller" do

        describe "visiting the edit page" do
          before { visit edit_user_path(user) }
          it { should have_title('Inicio de Sesión') }
        end

        describe "submitting to the update action" do
          before { patch user_path(user) }
          specify { expect(response).to redirect_to(signin_path) }
        end
      end
    end # non-signed-in users

    describe "as wrong user" do
      let(:user) { FactoryGirl.create(:user) }
      let(:other_user) { FactoryGirl.create(:user, name: "otro", email: "other@example.com") }
      before { sign_in user, no_capybara: true }

      describe "submitting a GET request to the Users#edit action" do
        before { get edit_user_path(other_user) }
        specify { expect(response.body).not_to match(full_title('Editar Usuario')) }
        specify { expect(response).to redirect_to(root_url) }
      end

      describe "submitting a PATCH request to the Users#update action" do
        before { patch user_path(other_user) }
        specify { expect(response).to redirect_to(root_url) }
      end
    end #as wrong user

    # describe "as administrator" do
    #   let(:user) { FactoryGirl.create(:user) }
    #   let(:admin_user) { FactoryGirl.create(:user, permissions: "1", email: "admin@mail.com") }
    #   before { sign_in user, no_capybara: true }
    #
    #   describe "submitting a GET request to the Users#edit action" do
    #     before { get edit_user_path(user) }
    #     specify { expect(response.body).to match(full_title('Editar Usuario')) }
    #     #specify { expect(response).to redirect_to(root_url) }
    #   end
    #
    #   describe "submitting a PATCH request to the Users#update action" do
    #     before { patch user_path(admin_user) }
    #     #specify { expect(response).not_to redirect_to(root_url) }
    #   end
    # end #as administrator


  end

end
