require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Domains' do
  header "Accept", "application/vnd.api+json"

  let!(:domain) { Domain.create(name: 'foobar') }
  let!(:records_for_domain) { domain.dns_records << [Dns::Record.new(content: 'record1'), Dns::Record.new(content: 'record2')] }

  get '/domains' do
    example_request 'Listing all domains' do
      expect(status).to eql(200)
      puts records_for_domain.map(&:guid)
      puts JSON.parse(response_body)
    end
  end
end
