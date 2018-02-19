require "application_system_test_case"

class WelcomeTest < ApplicationSystemTestCase
  test "user views the main page" do
    # 1. Open the main page.
    visit root_url

    # 2. Page consists of: header and simple form with a button.
    assert_selector "h1",     text: "Welcome inside user!"
    assert_selector "button", text: "Show tags"
  end

  test "user views tags" do
    # 1. Open the main page.
    visit root_url

    # 2. Page has a simple form with a button.
    assert_selector "button", text: "Show tags"

    # 3. Input a valid blog url or name into form.
    # 4. Click the button.
    # 5. Check if we ended up on a right subpage.
    # 6. We should see tags, links and frequency.
  end

  test "user tries to view tags for invalid blog" do
    # 1. Open the main page.
    visit root_url

    # 2. Page has a simple form with a button.
    assert_selector "button", text: "Show tags"

    # 3. Input a invalid blog url or name into form.
    # 4. Click the button.
    # 5. User sees a flash message "Ooop! Can't find this blog.".
  end
end
