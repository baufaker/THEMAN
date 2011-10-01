require 'spec_helper'

describe "programas/edit.html.erb" do
  before(:each) do
    @programa = assign(:programa, stub_model(Programa,
      :title => "MyString",
      :content => false
    ))
  end

  it "renders the edit programa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => programas_path(@programa), :method => "post" do
      assert_select "input#programa_title", :name => "programa[title]"
      assert_select "input#programa_content", :name => "programa[content]"
    end
  end
end
