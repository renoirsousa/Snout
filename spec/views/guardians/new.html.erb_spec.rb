require 'rails_helper'

RSpec.describe "guardians/new", type: :view do
  before(:each) do
    assign(:guardian, Guardian.new(
      :description => "MyString"
    ))
  end

  it "renders new guardian form" do
    render

    assert_select "form[action=?][method=?]", guardians_path, "post" do

      assert_select "input[name=?]", "guardian[description]"
    end
  end
end
