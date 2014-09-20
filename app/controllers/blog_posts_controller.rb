class BlogPostsController < Comfy::Blog::PostsController
  expose(:near_events)

  private

  def near_events
    Event.where('start_at > ?', Time.now).order('start_at').last(3)
  end
end