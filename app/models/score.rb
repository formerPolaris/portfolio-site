# == Schema Information
#
# Table name: scores
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  player     :string(255)
#  value      :integer
#  level      :integer
#  difficulty :string(255)
#  special    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Score < ActiveRecord::Base
  attr_accessible :game_id, :player, :value, :level, :difficulty, :special

  validates :game_id, :presence => true
  validates :player, :presence => true
  validates :value, :presence => true

  belongs_to :game
end