# -*- encoding : utf-8 -*-
class Post < ActiveRecord::Base
  attr_accessible :content, :title, :logo
  validates_presence_of :title, :message => 'Заполните заголовок статьи!'
    
  def cut_content
      if self.content.size > 1000
        self.content[0, 1000]
      else
        self.content
      end
  end 
  
end
