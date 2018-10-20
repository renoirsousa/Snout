require 'rails_helper'

RSpec.describe "guardians/index", type: :view do
  before(:each) do
    assign(:guardians, [
      Guardian.create!(
        :description => "Description"
      ),
      Guardian.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of guardians" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
