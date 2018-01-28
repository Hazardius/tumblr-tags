require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    sign_in FactoryBot.create(:user)
    @blog = FactoryBot.build(:blog)
  end

  should "get index" do
    get blogs_url
    assert_response :success
  end

  should "get new" do
    get new_blog_url
    assert_response :success
  end

  should "create blog" do
    assert_difference('Blog.count') do
      post blogs_url, params: { blog: { identifier: @blog.identifier, name: @blog.name } }
    end

    assert_redirected_to blog_url(Blog.last)
  end

  context "with existing blog" do
    setup do
      @blog.save
    end

    should "show blog" do
      get blog_url(@blog)
      assert_response :success
    end

    should "get edit" do
      get edit_blog_url(@blog)
      assert_response :success
    end

    should "update blog" do
      patch blog_url(@blog), params: { blog: { identifier: @blog.identifier, name: @blog.name } }
      assert_redirected_to blog_url(@blog)
    end

    should "destroy blog" do
      assert_difference('Blog.count', -1) do
        delete blog_url(@blog)
      end

      assert_redirected_to blogs_url
    end
  end
end
