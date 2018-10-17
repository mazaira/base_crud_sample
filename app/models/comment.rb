class Comment < BaseCrudModel
  belongs_to :user
  belongs_to :post
end
