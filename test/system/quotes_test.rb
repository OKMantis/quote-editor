require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  test "Creating New Quote" do
    
    # When we visit the Quotes#Index page 
    # We expect to see a title with the text "Quotes"
    visit quotes_path
    assert_selector "h1", text: "Quotes"
    
    # When we click on a link with the text "New Quote"
    # we expect to land on a page titled "New Quote"
    click_on "New Quote"
    assert_selector "h1", text: "New Quote"
    
    # When we fill in the name input with "Capybara Quote"
    # and we click on "Create Quote"
    fill_in "Name", with: "Capybara Quote"
    click_on "Create Quote"
    
    # We expect to be back on the page with the title "Quotes"
    # and to see our "Capybara Quote" added to the list
    assert_selector "h1", text: "Quotes"
    assert_text "Capybara Quote"
  end
end
