class Contact < ApplicationRecord
  has_many :book_contacts
  has_many :books, through: :book_contacts
end
