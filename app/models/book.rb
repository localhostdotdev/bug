class Book < ApplicationRecord
  has_many :book_contacts
  has_many :contacts, through: :book_contacts
end
