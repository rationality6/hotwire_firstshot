require "application_system_test_case"

class BlogMessagesTest < ApplicationSystemTestCase
  setup do
    @blog_message = blog_messages(:one)
  end

  test "visiting the index" do
    visit blog_messages_url
    assert_selector "h1", text: "Blog Messages"
  end

  test "creating a Blog message" do
    visit blog_messages_url
    click_on "New Blog Message"

    fill_in "Blog", with: @blog_message.blog_id
    fill_in "Body", with: @blog_message.body
    click_on "Create Blog message"

    assert_text "Blog message was successfully created"
    click_on "Back"
  end

  test "updating a Blog message" do
    visit blog_messages_url
    click_on "Edit", match: :first

    fill_in "Blog", with: @blog_message.blog_id
    fill_in "Body", with: @blog_message.body
    click_on "Update Blog message"

    assert_text "Blog message was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog message" do
    visit blog_messages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog message was successfully destroyed"
  end
end
