class CreateDnsRecords < ActiveRecord::Migration
  def change
    create_table :dns_records do |t|
      t.integer :domain_id
      t.string :content
      t.string :guid

      t.timestamps
    end
  end
end
