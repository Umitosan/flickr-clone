require 'rails_helper'

describe 'the add add user path' do

  before(:each) do
    testUser = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'user_email', :with => testUser.email
    fill_in 'user_password', :with => testUser.password
    click_button 'Log in'
    click_link testUser.email
  end

  it 'shows the add post path' do
    click_link 'New Post'
    expect(page).to have_content('Add a new Post')
  end

  it 'shows the add post path' do
    click_link 'New Post'
    fill_in 'post_description', :with => 'test_description'
    click_button 'Create Post'
    expect(page).to have_content('Post created successfully')
  end

end
