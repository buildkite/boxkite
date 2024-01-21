require 'rails_helper'

describe "creating new repository", type: :system do
  before do
    RepositoryType.create!(name: 'ruby')
    RepositoryType.create!(name: 'python')
    RepositoryType.create!(name: 'java')
  end

  it "creates new" do
    visit '/'

    click_link 'New repository'

    within("form.contents") do
      fill_in 'Name', with: 'My new python repo'
      select 'python', from: 'Repository type'
    end

    click_button 'Create Repository'

    expect(page).to have_content 'Repository was successfully created'
  end
end
