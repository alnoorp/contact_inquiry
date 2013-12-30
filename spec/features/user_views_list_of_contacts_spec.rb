require 'spec_helper'

feature 'User views a list of contacts' do
  it 'lists all contacts' do
    3.times { FactoryGirl.create(:contact) }

    visit contacts_path

    expect(Contact.count).to eq(3)
  end

  it 'lists all details for a contact' do
    contact = FactoryGirl.create(:contact)

    visit contact_path(contact)

    expect(page).to have_content(contact.first_name)
  end
end
