require "rails_helper"

feature "Article Creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do      # проверка на доступность страницы для пользователя
    visit new_article_path

    expect(page).to have_content 'New article'
  end
end
