class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer  "job_id"
      t.integer  "worker_id"
      t.integer  "status",                      :default => 0, :null => false
      t.string   "type"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.float    "payout"
      t.string   "task_id"
      t.timestamps
    end
  end
end
