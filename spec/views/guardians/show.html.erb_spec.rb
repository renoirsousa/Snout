require 'rails_helper'

RSpec.describe "guardians/show", type: :view do
  before(:each) do
    @guardian = assign(:guardian, Guardian.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
