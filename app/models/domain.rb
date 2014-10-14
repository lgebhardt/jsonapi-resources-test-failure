class Domain < ActiveRecord::Base
  has_many :dns_records, class_name: Dns::Record

  before_create do |obj|
    obj.guid ||= SecureRandom.uuid
  end

  def dns_record_guids
    self.dns_records.collect(&:guid)
  end
end
