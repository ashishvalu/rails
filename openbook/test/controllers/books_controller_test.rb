require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { Publisher_id: @book.Publisher_id, categary_id: @book.categary_id, isbn10: @book.isbn10, isbn13: @book.isbn13, language: @book.language, name: @book.name, price: @book.price } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { Publisher_id: @book.Publisher_id, categary_id: @book.categary_id, isbn10: @book.isbn10, isbn13: @book.isbn13, language: @book.language, name: @book.name, price: @book.price } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
