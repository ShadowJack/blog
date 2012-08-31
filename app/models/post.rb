# -*- encoding : utf-8 -*-
class Post < ActiveRecord::Base
  has_many :assignments
  has_many :tags, :through => :assignments, :class_name => 'Tag'
  attr_accessible :content, :title, :tag_ids
  accepts_nested_attributes_for :tags
  validates_presence_of :title, :message => 'Заполните заголовок статьи!'
    
  def cut_content
      if self.content.size > 1000
        self.content[0, 1000] + "..."
      else
        self.content
      end
  end 
  
end
