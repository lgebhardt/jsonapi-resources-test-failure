require 'jsonapi/resource'

class DomainResource < JSONAPI::Resource
  attributes :id, :name

  has_many :records#, key: 'record_ids'#, class_name: 'Dns::Record'#, key: 'record_ids'#, primary_key: 'guid'

  def id
    @model.guid
  end

  def record_ids
    @model.dns_records.collect(&:guid)
  end
end
