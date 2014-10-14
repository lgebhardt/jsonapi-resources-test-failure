class Domain < ActiveRecord::Base
  has_many :dns_records, class_name: Dns::Record

  before_create do |obj|
    obj.guid ||= SecureRandom.uuid
  end
end
