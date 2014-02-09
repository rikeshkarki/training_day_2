class Assignment < ActiveRecord::Base
    attr_accessible :status, :type, :payout
    belongs_to :job
    belongs_to :worker
  # attr_accessible :title, :body
end
