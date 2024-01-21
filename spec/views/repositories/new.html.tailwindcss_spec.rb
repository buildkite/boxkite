require 'rails_helper'

RSpec.describe "repositories/new", type: :view do
  before(:each) do
    assign(:repository, Repository.new(
      repository_type: nil,
      name: "MyString"
    ))
  end

  it "renders new repository form" do
    render

    assert_select "form[action=?][method=?]", repositories_path, "post" do

      assert_select "input[name=?]", "repository[repository_type_id]"

      assert_select "input[name=?]", "repository[name]"
    end
  end
end
