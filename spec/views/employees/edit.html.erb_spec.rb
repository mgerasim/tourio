require 'spec_helper'

describe "employees/edit" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :firstname => "MyString",
      :lastname => "MyString",
      :secondname => "MyString"
    ))
  end

  it "renders the edit employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path(@employee), :method => "post" do
      assert_select "input#employee_firstname", :name => "employee[firstname]"
      assert_select "input#employee_lastname", :name => "employee[lastname]"
      assert_select "input#employee_secondname", :name => "employee[secondname]"
    end
  end
end
