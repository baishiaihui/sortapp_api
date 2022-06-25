class SortInfo < ApplicationRecord

    # キーワード検索
    def self.search(keyword,syno_chk)
        if syno_chk == "true"
            # 類似語も含む
            where(["name like ? OR kana like ? OR syno like ?", "%#{keyword}%","%#{keyword}%","%#{keyword}%"])
        else
            # 類似語を含まない
            where(["name like ? OR kana like ?", "%#{keyword}%","%#{keyword}%"])
        end
    end
end