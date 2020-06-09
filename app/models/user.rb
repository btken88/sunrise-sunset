# frozen_string_literal: true

class User < ApplicationRecord
  has_many :data
  has_many :photos, through: :data
end
