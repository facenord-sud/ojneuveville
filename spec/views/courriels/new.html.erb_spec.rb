require 'spec_helper'

describe "courriels/new" do
  before(:each) do
    assign(:courriel, stub_model(Courriel).as_new_record)
  end

  it "renders new courriel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courriels_path, :method => "post" do
    end
  end
end
