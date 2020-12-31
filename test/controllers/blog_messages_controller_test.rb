require 'test_helper'

class BlogMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_message = blog_messages(:one)
  end

  test "should get index" do
    get blog_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_message_url
    assert_response :success
  end

  test "should create blog_message" do
    assert_difference('BlogMessage.count') do
      post blog_messages_url, params: { blog_message: { blog_id: @blog_message.blog_id, body: @blog_message.body } }
    end

    assert_redirected_to blog_message_url(BlogMessage.last)
  end

  test "should show blog_message" do
    get blog_message_url(@blog_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_message_url(@blog_message)
    assert_response :success
  end

  test "should update blog_message" do
    patch blog_message_url(@blog_message), params: { blog_message: { blog_id: @blog_message.blog_id, body: @blog_message.body } }
    assert_redirected_to blog_message_url(@blog_message)
  end

  test "should destroy blog_message" do
    assert_difference('BlogMessage.count', -1) do
      delete blog_message_url(@blog_message)
    end

    assert_redirected_to blog_messages_url
  end
end
