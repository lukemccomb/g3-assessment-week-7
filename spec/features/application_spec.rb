require 'spec_helper'

feature 'Homepage' do
  scenario 'Shows the welcome message' do
    visit '/'

    expect(page).to have_content 'Welcome!'
    expect(page).to have_content 'Name:'
    expect(page).to have_content 'Message:'
    expect(page).to have_content 'Add Message'
  end
end