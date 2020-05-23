require "rails_helper"

feature "Contact creation" do                       # создание контакта
  scenario "allows acess to contacts page" do       # проверка доступа к странице (что эта страница открывается)
    visit '/contact'                                # или можно visit new_contacts_path

    expect(page).to have_content 'Contact us'
  end
end
