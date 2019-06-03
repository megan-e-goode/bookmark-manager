require './lib/bookmark.rb'

describe '.all' do
  it 'returns an array' do
    expect(Bookmark.all).to be_an_instance_of(Array)
  end

  it 'returns an array of bookmarks' do
    expect(Bookmark.all).to satisfy{ |array| array.all? { |bookmark| bookmark.instance_of? Bookmark} }
  end
end

describe '.new' do
  it 'creates a new bookmark title' do
    bookmark = Bookmark.new('Google', 'http://google.com')
    expect(bookmark.title).to eq('Google')
  end

  it 'creates a new bookmark url' do
    bookmark = Bookmark.new('Google', 'http://google.com')
    expect(bookmark.url).to eq('http://google.com')
  end
end

describe '#to_s' do
  it 'converts element to string' do
    bookmark = Bookmark.new('Google', 'http://google.com')
    expect(bookmark.to_s).to eq("Google http://google.com")
  end
end
