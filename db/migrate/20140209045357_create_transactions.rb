class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer  "status",                                                                          :null => false
      t.string   "access_hash",         :limit => 40
      t.string   "type",                                                                            :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps
    end
  end
end
