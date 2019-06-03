feature 'view bookmarks' do

  scenario 'has a landing page' do
    visit '/'
    expect(page).to have_css('h1', text: 'Bookmarks')
  end

  scenario 'can view a list of bookmarks' do
    pending('')
    visit '/'
    expect(page).to have_content('Google')
    expect(page).to have_content('http://google.com')
  end
end