require 'pg'

class Bookmark
  attr_reader :id, :url

  def initialize(id, url)
    @id = id
    @url = url
  end

  def self.all
    if ENV['DB_ENV'] == 'test'
      connection = PG.connect( dbname: 'bookmark_manager_test')
    else
      connection = PG.connect( dbname: 'bookmark_manager')
    end
    result = connection.exec( "SELECT * FROM bookmarks" )
    result.map { |bookmark| Bookmark.new(bookmark['id'], bookmark['url']) }
  end

  def to_s
    "#{@url}"
  end
end
