RSpec.feature "User submits new song" do
  scenario "They see a page for an individual song" do
    artist = create(:artist)

    visit artist_path(artist)

    expect(current_path).to eq(artist_path(artist))

    click_on 'New song'
    song_title = 'Rainbow Land'
    fill_in "song_title", with: song_title

    click_on 'Create song'

    expect(page).to have_content song_title
    expect(page).to have_link artist.artist_name, href: artist_path(artist)
    end
  end
