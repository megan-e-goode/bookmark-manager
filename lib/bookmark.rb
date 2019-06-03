class Bookmark
  attr_reader :title, :url

  def initialize(title, url)
    @title = title
    @url = url
  end

  def self.all
    [ Bookmark.new('Google', 'http://google.com'), Bookmark.new('Nomnoml', 'http://nomnoml.com'), Bookmark.new('Trello', 'http://trello.com') ]
  end

  def to_s
    "#{@title} #{@url}"
  end
end
