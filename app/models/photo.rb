# frozen_string_literal: true

class Photo < ApplicationRecord
  have_many :data
  have_many :users, through: :data
end
