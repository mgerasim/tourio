require 'spec_helper'

describe "tours/edit" do
  before(:each) do
    @tour = assign(:tour, stub_model(Tour,
      :registr => "MyString",
      :date => "MyString",
      :of => "MyString",
      :client => "MyString",
      :price => "9.99",
      :employee => ""
    ))
  end

  it "renders the edit tour form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tours_path(@tour), :method => "post" do
      assert_select "input#tour_registr", :name => "tour[registr]"
      assert_select "input#tour_date", :name => "tour[date]"
      assert_select "input#tour_of", :name => "tour[of]"
      assert_select "input#tour_client", :name => "tour[client]"
      assert_select "input#tour_price", :name => "tour[price]"
      assert_select "input#tour_employee", :name => "tour[employee]"
    end
  end
end
