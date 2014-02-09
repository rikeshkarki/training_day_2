class Job < ActiveRecord::Base
  attr_accessible :status, :job_type_id, :transaction_id
  has_many :assignments
  has_many :workers, :through => :assignments
  belongs_to :transactions
end
