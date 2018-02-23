class AddRebasedFromToChangeset < ActiveRecord::Migration[5.1]
  def change
    add_column :changesets, :rebased_from_id, :integer
    add_index :changesets, :rebased_from_id
  end
end
