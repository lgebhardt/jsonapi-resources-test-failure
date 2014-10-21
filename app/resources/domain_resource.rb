class DomainResource < JSONAPI::Resource
  primary_key :guid

  attributes :id, :name

  has_many :records, foreign_key: :record_guids

  def record_guids
    @model.dns_records.collect(&:guid)
  end
end