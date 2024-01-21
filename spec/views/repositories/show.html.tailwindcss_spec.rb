require 'rails_helper'

RSpec.describe "repositories/show", type: :view do
  let(:repository_type) { RepositoryType.create(name: 'ruby') }

  before(:each) do
    assign(:repository, Repository.create!(
      repository_type: repository_type,
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
