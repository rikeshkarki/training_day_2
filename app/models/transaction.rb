class Transaction < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :jobs
end
