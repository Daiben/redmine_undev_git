class AddBranchesToChangeset < ActiveRecord::Migration[5.1]
  def change
    add_column :changesets, :branches, :text unless column_exists? :changesets, :branches
  end
end
