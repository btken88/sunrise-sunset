# frozen_string_literal: true

class Photo < ApplicationRecord
  has_many :data
  has_many :users, through: :data
end
