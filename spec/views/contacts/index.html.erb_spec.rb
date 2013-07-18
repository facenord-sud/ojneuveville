require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :fName => "F Name",
        :lName => "L Name",
        :fix => 1,
        :natel => 2
      ),
      stub_model(Contact,
        :fName => "F Name",
        :lName => "L Name",
        :fix => 1,
        :natel => 2
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "F Name".to_s, :count => 2
    assert_select "tr>td", :text => "L Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
