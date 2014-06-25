require 'spec_helper'

describe "Spare Parts" do

  subject { page }

  describe "Dar de Alta pieza" do
    before do
      visit new_spare_part_path
    end
    it {should have_content("Registrar Nuevas Refacciones")}
    it {should have_title(full_title("Nuevas Refacciones"))}
    it {should have_field("Marca")}
    it {should have_field("Carro")}
    it {should have_field("Generación")}
    it {should have_field("Region")}
    it {should have_field("Año")}
    it {should have_field("Nombre")}
    it {should have_field("Tipo")}
    it {should have_button("Guardar")}

    # describe "Nueva Pieza Invalida" do
    #   before{click_button "Guardar"}
    #   it {should have_selector('div.alert.alert-error')}
    # end
    #
    # describe "Nueva Pieza Valida" do
    #   let(:spare_part){FactoryGirl.create(:spare_part)}
    #   before do
    #     visit new_spare_part_path
    #     fill_in "Brand",         with: spare_part.brand
    #     fill_in "Car",           with: spare_part.car
    #     fill_in "Generation",    with: spare_part.generation
    #     fill_in "Region",        with: spare_part.region
    #     fill_in "Year",          with: spare_part.year
    #     fill_in "Name",          with: spare_part.name
    #     fill_in "Type",          with: spare_part.type
    #     click_button "Guardar"
    #   end
    #
    #   it {should_not have_selector('div.alert.alert-error')}
    #
    #   describe "Confirmar Reporte" do
    #     it {should have_button ("Editar")}
    #     it {should have_button("Confirmar")}
    #     it {should have_link('Refacciones')}
    #   end
    # end

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
