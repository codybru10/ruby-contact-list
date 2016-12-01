require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')

get('/') do
  erb(:index)
end

get('/contacts') do
  @contacts = Contact.all()
  erb(:contact_list)
end
