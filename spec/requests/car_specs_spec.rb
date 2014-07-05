require 'spec_helper'

describe "CarSpecs" do
  #Pruebas a las páginas que manipulan car
  let(:user) { FactoryGirl.create(:user) }


  it { should respond_to(:name) }
  it { should respond_to(:idbrand)}
  it { should respond_to(:cartype)}

  #se empieza a usar

end
