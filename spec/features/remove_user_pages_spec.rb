require 'rails_helper'

describe 'the delete the user path' do

  it 'navigates to the user control panel' do
    email = 'test_dude@gmail.com'
    visit new_user_registration_path
    fill_in 'user_username', with: 'test_dude'
    fill_in 'user_email', with: email
    fill_in 'user_password', with: '1234567'
    fill_in 'user_password_confirmation', with: '1234567'
    click_button "Sign up"
    click_link email
    expect(page).to have_content('New Post')
  end

  it 'logs the user in' do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Log in'
    expect(page).to have_content('Signed in successfully.')
  end

  it 'logs the user in' do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Log in'
    click_link user.email
    click_link 'Delete Account'
    expect(page).to have_content('User removed')
  end

end
