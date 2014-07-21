require 'spec_helper'

feature 'Homepage' do
  before(:each) do
    visit "/"
  end
  scenario 'Shows the welcome message and message form' do
    expect(page).to have_content 'Welcome!'
    expect(page).to have_content 'Name:'
    expect(page).to have_content 'Message:'
    expect(page).to have_content 'Add Message'
  end
  scenario 'Visitor can add message to homepage' do
    fill_in 'Name:', :with => 'Luke'
    fill_in 'Message:', :with => 'Such functionality! Much wow!'
    click_button 'Add Message'
    expect(page).to have_content('Luke says: Such functionality! Much wow!')
  end
  scenario 'Visitor can see all messages which have been left on homepage' do
    fill_in 'Name:', :with => 'Luke'
    fill_in 'Message:', :with => 'Such functionality! Much wow!'
    click_button 'Add Message'
    fill_in 'Name:', :with => 'Jefferoni'
    fill_in 'Message:', :with => 'Wow woah awesome crazy!'
    click_button 'Add Message'
    expect(page).to have_content('Luke says: Such functionality! Much wow! Jefferoni says: Wow woah awesome crazy!')
  end
end