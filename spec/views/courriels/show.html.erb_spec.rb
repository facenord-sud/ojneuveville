require 'spec_helper'

describe "courriels/show" do
  before(:each) do
    @courriel = assign(:courriel, stub_model(Courriel))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
