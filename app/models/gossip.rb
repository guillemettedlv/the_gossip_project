class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :gossips_tags
  has_many :tags, through: :gossips_tags
end
