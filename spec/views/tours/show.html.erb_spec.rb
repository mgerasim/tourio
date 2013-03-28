require 'spec_helper'

describe "tours/show" do
  before(:each) do
    @tour = assign(:tour, stub_model(Tour,
      :registr => "Registr",
      :date => "Date",
      :of => "Of",
      :client => "Client",
      :price => "9.99",
      :employee => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Registr/)
    rendered.should match(/Date/)
    rendered.should match(/Of/)
    rendered.should match(/Client/)
    rendered.should match(/9.99/)
    rendered.should match(//)
  end
end
