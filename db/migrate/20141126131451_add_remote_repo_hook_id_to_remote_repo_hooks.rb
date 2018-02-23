class AddRemoteRepoHookIdToRemoteRepoHooks < ActiveRecord::Migration[5.1]
  def change
    add_column :remote_repo_hooks, :remote_repo_ref_id, :integer
  end
end
