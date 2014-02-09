class Worker < ActiveRecord::Base
  attr_accessible :mturk_id_f, :is_super, :is_admin, :status, :comment
  # has_many :assignments
  # has_many :kaam_haru, :through => :assignments, :class_name => :jobs

  scope :disabled, where(:status => 3)
  scope :admin, where(:is_admin => true)

  validates_presence_of :status
  #validates :mturk_id_f, presence: true, :allow_blank => false, :allow_nil => false

  ACTIVE = 0
  DISABLED = 1
  DELETED = 2

  STATUSES = {
    0 => "Active",
    1 => "Disabled",
    2 => "Deleted", #worker deleted in worker platform
  }

  def nice_status
    STATUSES[self.status]
  end

end