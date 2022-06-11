class SortInfo < ApplicationRecord
    def self.search(keyword)
        where(["name like ? OR kana like ? OR syno like ?", "%#{keyword}%","%#{keyword}%","%#{keyword}%"])
    end
end