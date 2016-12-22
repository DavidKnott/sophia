require_relative '../../rails_helper'

describe "When a user visits a questions show page" do
  scenario "they can answer the question" do
    user = create(:user)
    visit login_path

    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    within "form" do
      click_on "Login"
    end
    question = create(:question)
    visit question_path(question)

    click_on "Answer question"

    fill_in "Answer", :with => "There is none."
    click_on "Answer question"

    expect(current_path).to eq question_answers_path(question)
    expect(page).to have_content "There is none."
  end
end