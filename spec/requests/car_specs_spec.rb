require 'spec_helper'

describe "CarSpecs" do
  describe "GET /car_specs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get car_specs_path
      response.status.should be(200)
    end
  end
end
