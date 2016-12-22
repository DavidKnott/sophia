require 'rails_helper'

describe "Admin visits users index page" do
  context "as admin" do
    it "allows admin to see all users" do
      admin = create(:user, role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_admin?).and_return(true)
      visit admin_users_path

      expect(page).to have_content("All Accounts")
    end
  end

  context "as user" do
    it "does not allow user to see admin user index" do
      user = create(:user)

      allow_any_instance_of(ApplicationController).to receive(:current_admin?).and_return(false)
      visit admin_users_path

      expect(page).to_not have_content "All Accounts"
      expect(page).to have_content "The page you were looking for doesn't exist."
    end
  end
end