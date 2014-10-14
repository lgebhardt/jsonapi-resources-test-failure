require 'jsonapi/resource'

class RecordResource < JSONAPI::Resource
  attributes :id, :name

  # belongs_to :domain#, class_name: 'Dns::Record'#, key: 'record_ids'#, primary_key: 'guid'

  def id
    @model.guid
  end
end

