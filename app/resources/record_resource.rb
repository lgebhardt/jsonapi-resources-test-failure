class RecordResource < JSONAPI::Resource
  primary_key :guid

  attributes :id, :content

  has_one :domain, foreign_key: :domain_guid

  routing_options :param => :guid

  model_name 'Dns::Record'

  def domain_guid
    @model.domain.guid
  end

  def domain_guid=(guid)
    @model.domain = Domain.find_by(guid: guid)
  end
end

