class Suggestion < ActiveRecord::Base
  acts_as_votable

  # belongs_to :user

  validates :name, presence: true
end
