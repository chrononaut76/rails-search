class Movie < ApplicationRecord
  belongs_to :director

  include PgSearch::Model
  multisearchable against: %i[title synopsis]
end
