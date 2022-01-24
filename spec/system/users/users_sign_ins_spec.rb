require 'rails_helper'

RSpec.describe "Users::SignIns", type: :system do
  before do
    driven_by(:rack_test)
  end

  # pending "add some scenarios (or delete) #{__FILE__}"

  it "User pode fazer login" do
    visit "/users/sign_in"

    fill_in "Email", :with => "exemplo@exemplo.com"
    fill_in "Password", :with => "123456"
    click_button "Log in"

    # expect(page).to have_text("Widget was successfully created.")
  end

  it "User pode fazer criar login" do
    visit "/users/sign_in"

    fill_in "Email", :with => "exemplo@exemplo.com"
    fill_in "Password", :with => "123456"
    click_link "Sign up"

    # expect(page).to have_text("Widget was successfully created.")
  end

  it "User pode fazer criar login" do
    visit "/users/sign_in"

    fill_in "Email", :with => "exemplo@exemplo.com"
    fill_in "Password", :with => "123456"
    click_link "Forgot your password?"

    # expect(page).to have_text("Widget was successfully created.")
  end

  it "User pode lembrar login" do
    visit "/users/sign_in"

    fill_in "Email", :with => "exemplo@exemplo.com"
    fill_in "Password", :with => "123456"
    check "Remember me"

    # expect(page).to have_text("Widget was successfully created.")
  end

end
