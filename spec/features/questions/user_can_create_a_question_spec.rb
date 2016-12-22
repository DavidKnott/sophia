require_relative '../../rails_helper'

describe 'When the user visits questions index' do
  scenario 'they can create a question' do
    user = create(:user)
    visit login_path

      fill_in "Email", :with => user.email
      fill_in "Password", :with => user.password
      within "form" do
        click_on "Login"
      end

    visit questions_path

    click_on "Create question"

    fill_in "Content", :with => "What's the meaning of life?"

    click_on "Ask question"

    expect(page).to have_content "Thanks for asking!"
    expect(page).to have_content "What's the meaning of life?"
  end
  
  scenario "as stranger they can't create a question" do
    visit questions_path

    click_on "Create question"

    expect(current_path).to eq login_path
  end
end