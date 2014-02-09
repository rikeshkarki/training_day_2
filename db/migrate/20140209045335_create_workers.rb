class CreateWorkers < ActiveRecord::Migration
  def change
      t.string   "mturk_id_f"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "comment"
      t.boolean  "is_super",     :default => false, :null => false
      t.boolean  "is_admin",     :default => false, :null => false
      t.integer  "status",       :default => 0
      t.timestamps
    end
  end
end
