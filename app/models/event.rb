# frozen_string_literal: true

class Event < ApplicationRecord
  extend Enumerize

  validates :locale, :kind, presence: true

  belongs_to :user
  belongs_to :resource, polymorphic: true

  enumerize :kind, in: %i[new_career_member next_step_open_source career_member_finish]
end
