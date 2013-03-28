require 'spec_helper'

describe "employees/index" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :secondname => "Secondname"
      ),
      stub_model(Employee,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :secondname => "Secondname"
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Secondname".to_s, :count => 2
  end
end
