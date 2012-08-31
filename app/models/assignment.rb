class Assignment < ActiveRecord::Base
  belongs_to :tag
  belongs_to :post
  attr_accessible :post_id, :tag_id
end
