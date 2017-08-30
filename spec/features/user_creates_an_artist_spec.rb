# As a user
require 'rails_helper'

RSpec.feature "User submits a new artist" do
  scenario "fills in name and image path and clicks submit" do
    visit('/artists')
    click_on 'New artist'

    expect(current_path).to eq('/artists/new')

    artist_name = 'Puff Daddy'
    artist_image_path = "http://s3.amazonaws.com/hiphopdx-production/2015/07/Puff-Daddy_07-06-2015.jpg"

    fill_in "artist_artist_name", with: artist_name
    fill_in "artist_image_path", with: artist_image_path
    click_on 'Create Artist'

    expect(current_path).to eq('/artists')
    #expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
    end
  end



  #
  # When I visit the artists index
  # And I click "New artist"
  # And I fill in the name
  # And I fill in an image path
  # And I click "Create Artist"
  # Then I should see the artist name and image on the page
