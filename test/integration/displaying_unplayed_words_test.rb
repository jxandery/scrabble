require 'test_helper'

class DisplayingUnplayedWordTest < ActionDispatch::IntegrationTest

  def test_multiple_words_played_and_displayed
    # feature allows user to input multiple spaced words into a text field
    # they click submit
    # see the words ranked by their score, highest to lowest

    visit '/evaluates'
    fill_in 'evaluate[words]', :with => "hello pin"
    click_link_or_button "Evaluate"

    assert page.has_content?("1 hello 8")
    assert page.has_content?("2 pin 5")
  end
end
