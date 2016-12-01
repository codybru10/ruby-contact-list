require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expections, false)

describe('the contact list file path', {:type => :feature}) do
  it('processes the users click and return the contact list page') do
    visit('/')
    click_link('See Contact List')
    expect(page).to have_content('Contact List')
  end
end

describe('the add contact list file path', {:type => :feature}) do
  it('processes the users click and return the add contact form page') do
    visit('/')
    click_link('Add Contact')
    expect(page).to have_content('Add Contact:')
  end
end

describe('add new contact to list and success file path', {:type => :feature}) do
  it('processes users input and click to return success page') do
    visit('/contacts/new')
    fill_in('first_name', :with => 'Bruce')
    click_button('Save')
    expect(page).to have_content('Contact Saved')
  end
end
