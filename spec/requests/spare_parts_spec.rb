require 'spec_helper'

describe "Spare Parts" do

  subject { page }

  describe "Registar Refaccion" do
    before do
      visit new_spare_part_path
    end
    it {should have_content("Registrar Nuevas Refacciones")}
    it {should have_title(full_title("Nuevas Refacciones"))}
    it {should have_field("Marca")}
    it {should have_field("Nombre")}
    it {should have_link("Asignar a un Auto")}
    it {should have_field("Descripción")}
    it {should have_field("Región")}
    it {should have_field("Padre")}
    it {should have_button("Guardar")}

    describe "Nueva Pieza Invalida" do
      before do
        click_button "Guardar"
      end
      it {should have_selector('div.alert.alert-error')}
    end

    describe "Nueva Pieza Valida" do
      let(:sparePart){FactoryGirl.create(:sparePart)}
      before do
        visit new_spare_part_path
        fill_in "Marca",         with: sparePart.brand
        fill_in "Nombre",          with: sparePart.name
        fill_in "Descripción",   with: sparePart.description
        fill_in "Región",     with: sparePart.carRegion
        click_button "Guardar"
      end

      it {should_not have_selector('div.alert.alert-error')}

      # describe "Confirmar Reporte" do
      #   it {should have_button ("Editar")}
      #   it {should have_button("Confirmar")}
      #   it {should have_link('Refacciones')}
      # end
    end

  end

  # describe "Editar Pieza" do
  #
  # end
  #
  # describe "Borrar Pieza" do
  #
  # end
  #
  # describe "Ver lista de piezas" do
  #
  # end

end
