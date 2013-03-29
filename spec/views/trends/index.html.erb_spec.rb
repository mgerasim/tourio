require 'spec_helper'

describe "trends/index" do
  before(:each) do
    assign(:trends, [
      stub_model(Trend,
        :name => "Name",
        :tour => nil
      ),
      stub_model(Trend,
        :name => "Name",
        :tour => nil
      )
    ])
  end

  it "renders a list of trends" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
