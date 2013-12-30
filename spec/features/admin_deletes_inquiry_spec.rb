require 'spec_helper'

feature 'Admin deletes a contact inquiry' do
  before :each do
    FactoryGirl.create(:contact)
  end

  it 'allows admin to delete inquiry' do
    FactoryGirl.create(:user, :admin)
    visit '/contacts'

    expect(page).to have_content('Destroy')
  end

  it 'does not allow non admin to delete inquiry' do
    FactoryGirl.create(:user)
    visit '/contacts'

    expect(page).to_not have_content('Destroy')
  end
end
