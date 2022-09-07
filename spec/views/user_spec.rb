require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  it 'should get splash on root' do
    visit root_path
    expect(page).to have_content('Flooz')
    expect(page).to have_content('SIGN IN')
  end

  it 'should get sign up new user' do
    visit new_user_registration_path
    fill_in 'user[email]', with: 'yolo@dev.co'
    fill_in 'user[name]', with: 'Test User'
    fill_in 'user[password]', with: '123456'
    fill_in 'user[password_confirmation]', with: '123456'
    click_button 'Sign up'
    expect(current_path).to eq(user_groups_path(User.last))
    expect(page).to have_content('New Group')
  end
end
