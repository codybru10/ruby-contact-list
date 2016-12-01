require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expections, false)

describe('the contact list file path', {:type => :feature}) do
  it('processes the users click and return the contact list page') do
    visit('/')
    click_link('See Contact List')
    expect(page).to have_content('Contacts')
  end
end
