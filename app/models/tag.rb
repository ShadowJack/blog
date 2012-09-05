class Tag < ActiveRecord::Base
  has_many :assignments
  has_many :posts, :through => :assignments
  attr_accessible :tag, :post_ids, :count
  
  def self.histogram
    Tag.all.inject({}){|hist, t| hist[t.tag] = t.count; hist }
  end
end
