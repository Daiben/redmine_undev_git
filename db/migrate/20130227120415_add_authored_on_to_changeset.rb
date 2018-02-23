class AddAuthoredOnToChangeset < ActiveRecord::Migration[5.1]
  def change
    add_column :changesets, :authored_on, :datetime unless column_exists? :changesets, :authored_on
  end
end
