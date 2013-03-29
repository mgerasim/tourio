require 'spec_helper'

describe "trends/show" do
  before(:each) do
    @trend = assign(:trend, stub_model(Trend,
      :name => "Name",
      :tour => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
