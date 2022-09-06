require 'rails_helper'

RSpec.describe 'groups/index', type: :view do
  before :each do
    @user = User.create!(name: 'Test User', email: 'yolo@dev.co', password: '123456',
                         password_confirmation: '123456')
  end
  it 'should add new group' do
    visit user_session_path
    fill_in 'user[email]', with: 'yolo@dev.co'
    fill_in 'user[password]', with: '123456'
    click_button 'SIGN IN'
    expect(page).to have_content('New Group')
  end
  it 'should add new group' do
    @group = Group.create!(name: 'Test Group', icon: 'default.png', user_id: @user.id)
    visit user_session_path
    fill_in 'user[email]', with: 'yolo@dev.co'
    fill_in 'user[password]', with: '123456'
    click_button 'SIGN IN'
    expect(page).to have_content('TEST GROUP')
  end
end
