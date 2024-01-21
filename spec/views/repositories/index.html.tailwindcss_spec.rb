require 'rails_helper'

RSpec.describe "repositories/index", type: :view do
  let(:repository_type) { RepositoryType.create(name: 'ruby') }

  before(:each) do
    assign(:repositories, [
      Repository.create!(
        repository_type: repository_type,
        name: "Repo 1"
      ),
      Repository.create!(
        repository_type: repository_type,
        name: "Repo 2"
      )
    ])
  end

  it "renders a list of repositories" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Repo 1".to_s), count: 1
    assert_select cell_selector, text: Regexp.new("Repo 2".to_s), count: 1
  end
end
