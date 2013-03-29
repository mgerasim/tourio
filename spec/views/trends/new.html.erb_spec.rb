require 'spec_helper'

describe "trends/new" do
  before(:each) do
    assign(:trend, stub_model(Trend,
      :name => "MyString",
      :tour => nil
    ).as_new_record)
  end

  it "renders new trend form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trends_path, "post" do
      assert_select "input#trend_name[name=?]", "trend[name]"
      assert_select "input#trend_tour[name=?]", "trend[tour]"
    end
  end
end
