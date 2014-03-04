# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Game < ActiveRecord::Base
  extend FriendlyId

  attr_accessible :name, :slug
  friendly_id :name, :use => [:slugged, :history]

  has_many :scores
end
