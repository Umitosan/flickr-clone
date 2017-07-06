require 'rails_helper'

describe 'the add add user path' do

  before(:each) do
    visit new_user_registration_path
  end

  it 'shows the add user form' do
    expect(page).to have_content('Password confirmation')
  end

  it 'shows the add user form' do
    fill_in 'user_username', with: 'test_dude'
    fill_in 'user_email', with: 'test_dude@gmail.com'
    fill_in 'user_password', with: '1234567'
    fill_in 'user_password_confirmation', with: '1234567'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
  
end
