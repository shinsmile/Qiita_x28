class TagArticle < ApplicationRecord

#アソシエーション
  belongs_to :tag
  belongs_to :article

end
