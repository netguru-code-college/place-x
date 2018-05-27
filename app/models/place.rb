# frozen_string_literal: true

class Place < ApplicationRecord
  acts_as_taggable
  validates :name, :lat, :lng, presence: true
  has_many :comments
end
