require 'rails_helper'

RSpec.describe "repositories/show", type: :view do
  before(:each) do
    assign(:repository, Repository.create!(
      repository_type: nil,
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
