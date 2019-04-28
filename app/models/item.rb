class Item < ApplicationRecord
  has_many :variants

  accepts_nested_attributes_for :variants,
                              reject_if: :all_blank,
                              allow_destroy: true
end
