class UserTag < ApplicationRecord

#アソシエーション
  belongs_to :user
  belongs_to :tag

end
