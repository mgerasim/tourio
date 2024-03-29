require 'spec_helper'

describe "employees/show" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :secondname => "Secondname"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/Secondname/)
  end
end
