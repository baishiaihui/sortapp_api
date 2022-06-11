class AddColumnSortInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :sort_infos, :sort2, :string
    add_column :sort_infos, :similar, :string
    add_column :sort_infos, :detail, :string
    add_column :sort_infos, :url, :string
  end
end
