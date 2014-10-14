require 'jsonapi/resource'

class DomainResource < JSONAPI::Resource
  attributes :id, :name

  has_many :records, key: 'dns_record_guids'#, class_name: 'Dns::Record'#, key: 'record_ids'#, primary_key: 'guid'

  def id
    @model.guid
  end
end
