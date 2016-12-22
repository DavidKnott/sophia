require_relative '../../rails_helper'

describe "When a user visits sessions login page" do
  scenario "they can login" do
    user = create(:user)
      visit login_path

      fill_in "Email", :with => user.email
      fill_in "Password", :with => user.password
      within "form" do
        click_on "Login"
      end

      expect(current_path).to eql user_path(user)
      expect(page).to have_content "You've Succesfully Logged In"
      expect(page).to have_content "Welcome #{user.first_name}"
  end
end