require('rspec')
require('contacts')

describe(Contact) do

  describe('#first_name') do
    it('returns the name of the contact') do
      test_contact = Contact.new({:first_name =>'Bruce'})
      expect(test_contact.first_name()).to(eq("Bruce"))
    end
  end


end
