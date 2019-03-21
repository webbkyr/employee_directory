class Department < ApplicationRecord
  has_many :positions
  has_many :teams
  has_many :notes, as: :notable

  validates :name, presence: true

  serialize :watcher_emails, Array

  attr_accessor :watchers
end
