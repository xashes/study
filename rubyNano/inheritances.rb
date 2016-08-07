module UdaciBlog
  module Imageable

  end

  class Post

  end

  class CatPost < Post
    include Imageable
  end

  puts CatPost.superclass

  class DogPost < Post

  end

  class BunnyPost < Post

  end
end

p UdaciBlog::Post.new
