# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "roles/show" do
  before(:each) do
    @role = assign(:role, stub_model(Role,
      :nick_name => "Nick Name",
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nick Name/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end
