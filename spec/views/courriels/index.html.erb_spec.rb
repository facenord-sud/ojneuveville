require 'spec_helper'

describe "courriels/index" do
  before(:each) do
    assign(:courriels, [
      stub_model(Courriel),
      stub_model(Courriel)
    ])
  end

  it "renders a list of courriels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
