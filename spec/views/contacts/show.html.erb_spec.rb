require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :fName => "F Name",
      :lName => "L Name",
      :fix => 1,
      :natel => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/F Name/)
    rendered.should match(/L Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
