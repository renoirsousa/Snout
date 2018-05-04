require 'rails_helper'

RSpec.describe "types/show", type: :view do
  before(:each) do
    @type = assign(:type, Type.create!(
      :specie => "Specie"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Specie/)
  end
end
