class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer  "transaction_id",                     :null => false
      t.integer  "job_type_id",                        :null => false
      t.integer  "status",          :default => 0,     :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps
    end
  end
end
