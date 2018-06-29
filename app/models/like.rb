class Like < ApplicationRecord

#アソシエーション
  belongs_to :user
# likecountの実装
  belongs_to :article, counter_cache: :likes_count
end
