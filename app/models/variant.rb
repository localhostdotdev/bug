class Variant < ApplicationRecord
  belongs_to :item, -> { where(kind: :article) }
end
