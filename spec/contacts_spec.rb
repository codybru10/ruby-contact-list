require('rspec')
require('contacts')

describe(Contact) do

  describe('#first_name') do
    it('returns the name of the contact') do
      test_contact = Contact.new({:first_name =>'Bruce', :last_name => 'Wayne', :job_title => "CEO", :company => "Wayne Enterprises"})
      expect(test_contact.first_name()).to(eq("Bruce"))
    end
  end

  describe('#last_name') do
    it('returns the name of the contact') do
      test_contact = Contact.new({:first_name =>'Bruce', :last_name => 'Wayne', :job_title => "CEO", :company => "Wayne Enterprises"})
      expect(test_contact.last_name()).to(eq("Wayne"))
    end
  end

  describe('#job_title') do
    it('returns the job title') do
      test_contact = Contact.new({:first_name =>'Bruce', :last_name => 'Wayne', :job_title => "CEO", :company => "Wayne Enterprises"})
      expect(test_contact.job_title()).to(eq("CEO"))
    end
  end

  describe('#company') do
    it('returns the name of the contact') do
      test_contact = Contact.new({:first_name =>'Bruce', :last_name => 'Wayne', :job_title => "CEO", :company => "Wayne Enterprises"})
      expect(test_contact.company()).to(eq("Wayne Enterprises"))
    end
  end


end
