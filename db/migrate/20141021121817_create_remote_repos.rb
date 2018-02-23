class CreateRemoteRepos < ActiveRecord::Migration[5.1]
  def change
    create_table :remote_repos do |t|
      t.references :remote_repo_site
      t.string :url
      t.string :root_url
      t.text :tail_revisions

      t.string :path_to_repo
      t.text :web_hook

      t.timestamps
    end
    add_index :remote_repos, :remote_repo_site_id unless index_exists?(:remote_repos, :remote_repo_site_id)
  end
end
