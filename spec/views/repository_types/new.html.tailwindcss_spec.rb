require 'rails_helper'

RSpec.describe "repository_types/new", type: :view do
  before(:each) do
    assign(:repository_type, RepositoryType.new(
      name: "MyString"
    ))
  end

  it "renders new repository_type form" do
    render

    assert_select "form[action=?][method=?]", repository_types_path, "post" do

      assert_select "input[name=?]", "repository_type[name]"
    end
  end
end
