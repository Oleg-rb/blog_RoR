require "rails_helper"

feature "Contact creation" do                       # создание контакта
  scenario "allows access to contacts page" do      # проверка доступа к странице (что эта страница открывается)
    visit new_contacts_path                         # используем путь из хелпера в Routes

    expect(page).to have_content I18n.t 'contacts.contact_us'
  end

  scenario "allows a guest to create contact" do
    visit new_contacts_path

    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'something'
    
    click_button 'Send message'

    expect(page).to have_content 'Thanks!'          # то, что ожидаем после совершения действия на странице
  end
end
