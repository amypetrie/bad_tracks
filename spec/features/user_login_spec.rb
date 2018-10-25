require 'rails_helper'

describe 'login process' do
  describe 'can log in as registered users' do
    it 'should succeed' do
      username = 'Amy'
      password = 'awesomeamy'
      user = User.create(username: username, password: password)

      visit root_path

      click_on 'I already have an account'

      expect(current_path).to eq(login_path)
      fill_in :username, with: username
      fill_in :password, with: password
      click_on 'Log In'
      expect(current_path). to eq(user_path(user))
      expect(page).to have_content("Welcome, #{username}")
    end
  end
end
