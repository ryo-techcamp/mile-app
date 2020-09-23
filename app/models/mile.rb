class Mile < ApplicationRecord
  belongs_to :task
  belongs_to :user

  validates :get_mile, presence: true
end
