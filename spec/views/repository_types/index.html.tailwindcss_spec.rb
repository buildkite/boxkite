require 'rails_helper'

RSpec.describe "repository_types/index", type: :view do
  before(:each) do
    assign(:repository_types, [
      RepositoryType.create!(
        name: "ruby"
      ),
      RepositoryType.create!(
        name: "python"
      )
    ])
  end

  it "renders a list of repository_types" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("ruby".to_s), count: 1
    assert_select cell_selector, text: Regexp.new("python".to_s), count: 1
  end
end
