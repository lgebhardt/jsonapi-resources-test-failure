class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :name
      t.string :guid

      t.timestamps
    end
  end
end
