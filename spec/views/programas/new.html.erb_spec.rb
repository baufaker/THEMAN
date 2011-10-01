require 'spec_helper'

describe "programas/new.html.erb" do
  before(:each) do
    assign(:programa, stub_model(Programa,
      :title => "MyString",
      :content => false
    ).as_new_record)
  end

  it "renders new programa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => programas_path, :method => "post" do
      assert_select "input#programa_title", :name => "programa[title]"
      assert_select "input#programa_content", :name => "programa[content]"
    end
  end
end
