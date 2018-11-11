require 'test_helper'

class BookAbsolutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_absolution = book_absolutions(:one)
  end

  test "should get index" do
    get book_absolutions_url
    assert_response :success
  end

  test "should get new" do
    get new_book_absolution_url
    assert_response :success
  end

  test "should create book_absolution" do
    assert_difference('BookAbsolution.count') do
      post book_absolutions_url, params: { book_absolution: {  } }
    end

    assert_redirected_to book_absolution_url(BookAbsolution.last)
  end

  test "should show book_absolution" do
    get book_absolution_url(@book_absolution)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_absolution_url(@book_absolution)
    assert_response :success
  end

  test "should update book_absolution" do
    patch book_absolution_url(@book_absolution), params: { book_absolution: {  } }
    assert_redirected_to book_absolution_url(@book_absolution)
  end

  test "should destroy book_absolution" do
    assert_difference('BookAbsolution.count', -1) do
      delete book_absolution_url(@book_absolution)
    end

    assert_redirected_to book_absolutions_url
  end
end
