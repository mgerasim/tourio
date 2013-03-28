require 'spec_helper'

describe "tours/index" do
  before(:each) do
    assign(:tours, [
      stub_model(Tour,
        :registr => "Registr",
        :date => "Date",
        :of => "Of",
        :client => "Client",
        :price => "9.99",
        :employee => ""
      ),
      stub_model(Tour,
        :registr => "Registr",
        :date => "Date",
        :of => "Of",
        :client => "Client",
        :price => "9.99",
        :employee => ""
      )
    ])
  end

  it "renders a list of tours" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Registr".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Of".to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
