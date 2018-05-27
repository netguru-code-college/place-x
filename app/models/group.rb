# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_and_belongs_to_many :users

  validates :owner_id, presence: true
  # validates: name, presence: true
end
