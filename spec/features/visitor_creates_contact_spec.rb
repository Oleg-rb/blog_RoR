require "rails_helper"

feature "Contact creation" do                       # создание контакта
  scenario "allows acess to contacts page" do       # проверка доступа к странице (что эта страница открывается)
    visit new_contacts_path                         # или можно visit '/contact'

    expect(page).to have_content I18n.t 'contacts.contact_us'
  end
end
