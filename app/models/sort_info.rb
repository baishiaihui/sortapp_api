class SortInfo < ApplicationRecord
    def self.search(keyword)
        where(["name like? OR kana like?", "%#{keyword}%","%#{keyword}%"])
    end
end
