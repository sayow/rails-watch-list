class RemoveMovieIdFromLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :lists, :movie_id
  end
end
