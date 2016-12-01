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

get('/contacts/new') do
  erb(:contact_form)
end

post('/contacts') do
  @first_name = params.fetch("first_name")
  @last_name = params.fetch("last_name")
  @job_title = params.fetch("job_title")
  @company = params.fetch("company")
  Contact.new({:first_name => @first_name, :last_name => @last_name, :job_title => @job_title, :company => @company}).save()
  @contacts = Contact.all()
  erb(:success)
end

get('/contacts/:id') do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:contact_details)
end
