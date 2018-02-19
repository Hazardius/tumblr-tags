require "application_system_test_case"

class WelcomeTest < ApplicationSystemTestCase
  test "visiting the main page" do
    visit root_url

    assert_selector "div", text: "Welcome inside user!"
  end
end
