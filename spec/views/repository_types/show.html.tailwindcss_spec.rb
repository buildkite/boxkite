require 'rails_helper'

RSpec.describe "repository_types/show", type: :view do
  before(:each) do
    assign(:repository_type, RepositoryType.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
