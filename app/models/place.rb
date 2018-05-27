# frozen_string_literal: true

class Place < ApplicationRecord
  validates :name, :lat, :lng, presence: true
  has_many :comments
end
