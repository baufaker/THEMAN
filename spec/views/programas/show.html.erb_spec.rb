require 'spec_helper'

describe "programas/show.html.erb" do
  before(:each) do
    @programa = assign(:programa, stub_model(Programa,
      :title => "Title",
      :content => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
