class RemoveReviewFromRestaurant < ActiveRecord::Migration[6.0]
  def change

    remove_column :restaurants, :review, :string
  end
end
