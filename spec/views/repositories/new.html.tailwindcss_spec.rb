require 'rails_helper'

RSpec.describe "repositories/new", type: :view do
  let(:repository_type) { RepositoryType.create(name: 'ruby') }

  before(:each) do
    assign(:repository, Repository.new(
      repository_type: repository_type,
      name: "MyString"
    ))
  end

  it "renders new repository form" do
    render

    assert_select "form[action=?][method=?]", repositories_path, "post" do

      assert_select "select[name=?]", "repository[repository_type_id]"

      assert_select "input[name=?]", "repository[name]"
    end
  end
end
