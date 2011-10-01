require 'spec_helper'

describe "programas/index.html.erb" do
  before(:each) do
    assign(:programas, [
      stub_model(Programa,
        :title => "Title",
        :content => false
      ),
      stub_model(Programa,
        :title => "Title",
        :content => false
      )
    ])
  end

  it "renders a list of programas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
