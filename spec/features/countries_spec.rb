require 'spec_helper'

feature 'Countries and Continents' do

  scenario "User views a list of continents, and sees the countries in that continent" do
    visit '/'
    click_on 'Continents'
    click_on 'Africa'
    expect(page).to have_content("Kenya")
    expect(page).to have_content("South Africa")
    expect(page).to have_no_content("United States of America")
    expect(page).to have_no_content("Canada")
    expect(page).to have_no_content("Canada")
    expect(page).to have_no_content("Italy")
    expect(page).to have_no_content("Venezuela")
    expect(page).to have_no_content("Mexico")
    expect(page).to have_no_content("Spain")
    expect(page).to have_no_content("Colombia")
    expect(page).to have_no_content("France")
    expect(page).to have_no_content("Argentina")
  end

end