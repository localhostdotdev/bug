class BookContact < ApplicationRecord
  belongs_to :book
  belongs_to :contact
end
