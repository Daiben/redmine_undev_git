class AddAssigneeToHooks < ActiveRecord::Migration[5.1]
  def change
    add_column :hooks, :new_assigned_to_id, :integer
  end
end
