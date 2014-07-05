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

      let(:user) { FactoryGirl.create(:user) }

      before do
        #sign_in user
        visit signup_path
       end


      #EXISTE LA PAGINA
      it{should have_content("Dar de Alta")}
      it{should have_title(full_title("Alta de Usuarios"))}
      it{should have_field("Nombre")}
      it{should have_field("Apellidos")}
      it{should have_field("Correo Electrónico")}
      it{should have_field("Permisos")}
      it{should have_field("Contraseña")}
      it{should have_field("Confirmación de Contraseña")}
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
          fill_in "Correo Electrónico",  with: "martin@granad.com"
          fill_in "Permisos",   with: "3"
          fill_in "Contraseña",   with: "password"
          fill_in "Confirmación de Contraseña",  with:"password"
        end

        it "should create a user" do
          expect {click_button submit }.to change(User, :count).by(1)
        end

        describe "after saving the user" do
          before { click_button submit }
          let(:user) { User.find_by(email: 'martin@granad.com') }

          it { should have_link('Cerrar Sesión') }
          it { should have_title(user.name) }
          it { should have_selector('div.alert.alert-success', text: 'Bienvenido') }
        end #fin after saving the user

      end # fin con valid information
    end

  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }

    before do
      sign_in user
      visit edit_user_path(user)
    end


    describe "page" do
      it { should have_content("Actualizar Datos de Usuario") }
      it { should have_title("Editar Usuario") }

      it{should have_field("Nombre")}
      it{should have_field("Apellidos")}
      it{should have_field("Correo Electrónico")}
      it{should have_field("Permisos")}
      it{should have_field("Contraseña")}
      it{should have_field("Confirmación de Contraseña")}
      
    end

    describe "with invalid information" do
      before { click_button "Guardar Cambios" }
      it { should have_content('error') }
    end # fin with INvalid information

    describe "with valid information" do
      let(:new_name)  { "New Name" }
      let(:new_lastname)  { "New Apellido" }
      let(:new_permissions)  { "2" }
      let(:new_email) { "new@example.com" }

      before do
        fill_in "Nombre",             with: new_name
        fill_in "Correo Electrónico",            with: new_email
        fill_in "Contraseña",         with: user.password
        fill_in "Confirmación de Contraseña", with: user.password
        click_button "Guardar Cambios"
      end

      it { should have_title(new_name) }
      it { should have_selector('div.alert.alert-success') }
      it { should have_link('Cerrar Sesión', href: signout_path) }
      specify { expect(user.reload.name).to  eq new_name }
      specify { expect(user.reload.email).to eq new_email }
    end # fin with valid information

  end #fin describe edit

end
