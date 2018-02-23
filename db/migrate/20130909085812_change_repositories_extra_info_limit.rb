class ChangeRepositoriesExtraInfoLimit < ActiveRecord::Migration[5.1]
  def change
    if defined?(ActiveRecord::ConnectionAdapters::MysqlAdapter) &&
        ActiveRecord::Base.connection.instance_of?(
            ActiveRecord::ConnectionAdapters::MysqlAdapter)
      change_column :repositories, :extra_info, :text, limit: 16777215
    end
  end
end
