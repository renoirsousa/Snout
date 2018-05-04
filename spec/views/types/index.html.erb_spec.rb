require 'rails_helper'

RSpec.describe "types/index", type: :view do
  before(:each) do
    assign(:types, [
      Type.create!(
        :specie => "Specie"
      ),
      Type.create!(
        :specie => "Specie"
      )
    ])
  end

  it "renders a list of types" do
    render
    assert_select "tr>td", :text => "Specie".to_s, :count => 2
  end
end
