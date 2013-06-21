# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "roles/new" do
  before(:each) do
    assign(:role, stub_model(Role,
      :nick_name => "MyString",
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => roles_path, :method => "post" do
      assert_select "input#role_nick_name", :name => "role[nick_name]"
      assert_select "input#role_name", :name => "role[name]"
      assert_select "input#role_description", :name => "role[description]"
    end
  end
end
