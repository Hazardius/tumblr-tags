client = Tumblr::Client.new

## Configurables
blog_url = "testblog.tumblr.com"
###

all_tags = []
not_published = 0

begin
  total_posts_no = client.posts(blog_url, limit: 0, filter: "text")["total_posts"]
  offset = 0
  while (offset <= total_posts_no)
    posts = client.posts(blog_url, offset: offset, filter: "text")["posts"]
    posts.each do |post|
      if post["state"] == "published"
        all_tags += post["tags"]
        all_tags.uniq!
      else
        not_published += 1
      end
    end
    offset += 20
  end
  all_tags.sort_by!(&:downcase)
end
