require 'spec_helper'

feature 'Admin deletes a contact inquiry' do
  before :each do
    FactoryGirl.create(:contact)
  end

  it 'shows user delete option' do
    FactoryGirl.create(:user)
    visit contacts_path

    expect(page).to have_content('Destroy')
  end

  it 'allows user to delete inquiry' do
    inquiry1 = FactoryGirl.create(:contact, first_name: 'Amy')
    inquiry2 = FactoryGirl.create(:contact, first_name: 'Dr. Who')
    visit contacts_path

    within("##{inquiry1.id}") { click_on('Destroy') }
    expect(page).to_not have_content inquiry1.first_name

  end
end
