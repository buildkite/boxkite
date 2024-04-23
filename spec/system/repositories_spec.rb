require 'rails_helper'

describe 'repositories', type: :system do
  before do
    %w[ruby python java].each do |type|
      RepositoryType.create!(name: type)
    end

    %w[kite drachen pipas].each_with_index do |repo_name, index|
      Repository.create!(name: repo_name, repository_type: RepositoryType.find(index + 1))
    end
  end

  it 'lists repositories' do
    visit '/'
    expect(page).to have_content 'kite'
    expect(page).to have_content 'drachen'
    expect(page).to have_content 'pipas'
  end
end
