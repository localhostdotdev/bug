class AddIssuedAtToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :issued_at, :datetime
  end
end
