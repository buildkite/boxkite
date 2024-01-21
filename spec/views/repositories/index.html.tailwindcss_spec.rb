require 'rails_helper'

RSpec.describe "repositories/index", type: :view do
  before(:each) do
    assign(:repositories, [
      Repository.create!(
        repository_type: nil,
        name: "Name"
      ),
      Repository.create!(
        repository_type: nil,
        name: "Name"
      )
    ])
  end

  it "renders a list of repositories" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
