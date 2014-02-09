class CreateJobTypes < ActiveRecord::Migration
  def change
    create_table :job_types do |t|
      t.string   "title",                     :limit => 128,                                                   :null => false
      t.string   "type",                                                                                       :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "skill_id"
      t.timestamps
    end
  end
end
