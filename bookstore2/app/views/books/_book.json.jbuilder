json.extract! book, :id, :name, :price, :Publisher_id, :categary_id, :isbn10, :isbn13, :language, :created_at, :updated_at
json.url book_url(book, format: :json)
