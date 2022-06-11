class DelSimilarAddSynoToSortInfos < ActiveRecord::Migration[6.1]
  def change
    remove_column :sort_infos, :similar, :text
    add_column :sort_infos, :syno, :text
  end
end
