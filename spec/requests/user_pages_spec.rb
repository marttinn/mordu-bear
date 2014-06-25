require 'spec_helper'

describe "User pages" do

    subject { page }

    describe "profile page" do
      let(:user) { FactoryGirl.create(:user) }
      before { visit user_path(user) }

      it { should have_content(user.name) }
      it { should have_title(user.name) }
    end

    describe "signup page" do
      before { visit signup_path}

      #EXISTE LA PAGINA
      it{should have_content("Dar de Alta")}
      it{should have_title(full_title("Alta de Usuarios"))}
      it{should have_field("Nombre")}
      it{should have_field("Apellidos")}
    end

    describe "signup" do
      before {visit signup_path}

      let(:submit){"Crear Usuario"}

      describe "with invalid information" do
        it "should not create a user"  do
          expect{click_button submit}.not_to change(User, :count)
        end
      end

      describe "with valid information" do
        before do
          fill_in "Nombre",    with: 'Martin'
          fill_in "Apellidos",  with: "Granad"
          fill_in "Permisos",   with: "3"
          fill_in "Password",   with: "password"
          fill_in "Confirmación de Password",  with:"password"
        end

        it "should create a user" do
          expect {click_button submit }.to change(User, :count).by(1)
        end

        
      end
    end

end
