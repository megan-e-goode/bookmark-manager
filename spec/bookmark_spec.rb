require './lib/bookmark.rb'

describe '.all' do
  it 'returns an array' do
    expect(Bookmark.all).to be_an_instance_of(Array)
  end

  it 'returns an array of bookmarks' do
    expect(Bookmark.all).to satisfy{ |array| array.all? { |bookmark| bookmark.instance_of? Bookmark} }
  end
end
