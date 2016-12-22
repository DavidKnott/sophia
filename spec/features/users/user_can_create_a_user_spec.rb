require_relative '../../rails_helper'

describe "When a user vists /users/new" do
  scenario "they can create a path" do
    visit new_user_path

    fill_in "First name", :with => "David"
    fill_in "Last name", :with => "David"
    fill_in "Username", :with => "David"
    fill_in "Email", :with => "David"
    fill_in "Password", :with => "4122"
    fill_in "Password confirmation", :with => "4122"

    click_on "Create Account"

    expect(page).to have_content "You've Created a New Account!"
    expect(page).to have_content "Please Login"
  end
end