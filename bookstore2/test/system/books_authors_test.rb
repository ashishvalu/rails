require "application_system_test_case"

class BooksAuthorsTest < ApplicationSystemTestCase
  setup do
    @books_author = books_authors(:one)
  end

  test "visiting the index" do
    visit books_authors_url
    assert_selector "h1", text: "Books Authors"
  end

  test "creating a Books author" do
    visit books_authors_url
    click_on "New Books Author"

    fill_in "Author", with: @books_author.author_id
    fill_in "Book", with: @books_author.book_id
    click_on "Create Books author"

    assert_text "Books author was successfully created"
    click_on "Back"
  end

  test "updating a Books author" do
    visit books_authors_url
    click_on "Edit", match: :first

    fill_in "Author", with: @books_author.author_id
    fill_in "Book", with: @books_author.book_id
    click_on "Update Books author"

    assert_text "Books author was successfully updated"
    click_on "Back"
  end

  test "destroying a Books author" do
    visit books_authors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Books author was successfully destroyed"
  end
end
