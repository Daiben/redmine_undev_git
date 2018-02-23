class AddAuthorEmailToRemoteRepoHooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :remote_repo_hooks, :author_string
    add_column :remote_repo_hooks, :author_email, :string
  end
end
