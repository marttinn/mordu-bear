require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", lastname: "SurName", permissions: "1", password:"hola_1", password_confirmation:"hola_1") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:lastname) }
  it { should respond_to(:permissions) }
  it { should respond_to(:password) }
  it { should be_valid }


    describe "sin nombre" do
      before { @user.name = "" }
      it { should_not be_valid }
    end


end
