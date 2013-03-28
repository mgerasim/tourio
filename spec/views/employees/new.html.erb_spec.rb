require 'spec_helper'

describe "employees/new" do
  before(:each) do
    assign(:employee, stub_model(Employee,
      :firstname => "MyString",
      :lastname => "MyString",
      :secondname => "MyString"
    ).as_new_record)
  end

  it "renders new employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path, :method => "post" do
      assert_select "input#employee_firstname", :name => "employee[firstname]"
      assert_select "input#employee_lastname", :name => "employee[lastname]"
      assert_select "input#employee_secondname", :name => "employee[secondname]"
    end
  end
end
