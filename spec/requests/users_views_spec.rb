require 'spec_helper'

describe "User pages" do

    subject { page }

    describe "Signup page" do
      before { visit signup_path}

      #EXISTE LA PAGINA
      it{should have_content("Dar de Alta")}
      it{should have_title(full_title("Alta de Usuarios"))}
      

    end

    #hacer proceso de signup
    describe "signup" do

        let(:submit) { "Create my account" }


    end


end
