require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :fName => "MyString",
      :lName => "MyString",
      :fix => 1,
      :natel => 1
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_fName", :name => "contact[fName]"
      assert_select "input#contact_lName", :name => "contact[lName]"
      assert_select "input#contact_fix", :name => "contact[fix]"
      assert_select "input#contact_natel", :name => "contact[natel]"
    end
  end
end
