require 'spec_helper'

describe "trends/edit" do
  before(:each) do
    @trend = assign(:trend, stub_model(Trend,
      :name => "MyString",
      :tour => nil
    ))
  end

  it "renders the edit trend form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trend_path(@trend), "post" do
      assert_select "input#trend_name[name=?]", "trend[name]"
      assert_select "input#trend_tour[name=?]", "trend[tour]"
    end
  end
end
