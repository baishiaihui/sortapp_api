class CreateSortInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :sort_infos do |t|
      t.string :name, null: false
      t.string :kana, null: false
      t.string :sort, null: false
      t.timestamps
    end
  end
end
