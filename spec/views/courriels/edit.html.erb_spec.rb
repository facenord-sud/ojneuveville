require 'spec_helper'

describe "courriels/edit" do
  before(:each) do
    @courriel = assign(:courriel, stub_model(Courriel))
  end

  it "renders the edit courriel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courriels_path(@courriel), :method => "post" do
    end
  end
end
