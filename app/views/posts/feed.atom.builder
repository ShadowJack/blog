atom_feed do |feed|
  feed.title "Blog"
  feed.updated (@posts.first.created_at) if @posts.length > 0
              
  @posts.each do |post|
    feed.entry post, :published => post.created_at do |entry|
      entry.title post.title
      
      entry.author do |author|
        author.name "Blog author"
      end
    end
  end
end