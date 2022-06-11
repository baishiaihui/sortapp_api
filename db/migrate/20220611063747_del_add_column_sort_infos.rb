class DelAddColumnSortInfos < ActiveRecord::Migration[6.1]
  def change
    remove_column :sort_infos, :similar, :string
    add_column :sort_infos, :similar, :text
  end
end
