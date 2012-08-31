# -*- encoding : utf-8 -*-
#require 'kaminari'

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
  
  def previous
    posts = Post.all(:order => 'created_at DESC')
    curr_index = posts.index {|elem| elem.id == self.id}
    if curr_index > 0
      return posts[curr_index - 1]
    else
      #return nil if there is no previous element
      return nil
    end
  end
  
  def next
    posts = Post.all(:order => 'created_at DESC')
    curr_index = posts.index {|elem| elem.id == self.id}
    if curr_index < (posts.size - 1) 
      return posts[curr_index + 1]
    else
      #return nil if there is no next element
      return nil
    end
  end 
     
end
