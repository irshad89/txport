require 'spec_helper'

describe "depot_fuels/show" do
  before(:each) do
    @depot_fuel = assign(:depot_fuel, stub_model(DepotFuel,
      :unit_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
