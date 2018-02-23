class AddPatchIdToChangeset < ActiveRecord::Migration[5.1]
  def change
    add_column :changesets, :patch_id, :string unless column_exists? :changesets, :patch_id
  end
end
