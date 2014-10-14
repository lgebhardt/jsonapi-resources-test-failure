class Dns::Record < ActiveRecord::Base
  belongs_to :domain

  before_create do |obj|
    obj.guid ||= SecureRandom.uuid
  end
end
