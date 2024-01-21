require 'rails_helper'

RSpec.describe "repository_types/edit", type: :view do
  let(:repository_type) {
    RepositoryType.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:repository_type, repository_type)
  end

  it "renders the edit repository_type form" do
    render

    assert_select "form[action=?][method=?]", repository_type_path(repository_type), "post" do

      assert_select "input[name=?]", "repository_type[name]"
    end
  end
end
