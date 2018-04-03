class Subtask < ApplicationRecord
  belongs_to :task
  has_many :subcomments, dependent: :destroy
end
