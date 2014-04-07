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
  attr_accessible :game_id, :player, :value, :level, :difficulty, :special, :elapsed, :lives, :is_seed
  attr_accessor :elapsed, :lives, :is_seed

  validates :game_id, :player, :value,
    :presence => true

  # Asteroids validations
  with_options :if => :is_asteroids? do |score|
    score.validate :elapsed_and_lives_included?
    score.validate :asteroids_elapsed_and_lives_valid?
    score.validates :player,
      length: { in: 1..10 },
      allow_blank: false
    score.validates :value,
      numericality: {
        greater_than_or_equal_to: 0,
      }
    score.validates :level,
      numericality: {
        greater_than: 0,
        less_than_or_equal_to: 50
      }
  end

  def is_asteroids?
    game_id == 2 && is_seed.nil?
  end

  def elapsed_and_lives_included?
    p "hello"
    if @elapsed.nil? || @lives.nil?
      errors[:base] << "Must include elapsed time and lives"
      return false
    end
    true
  end

  def asteroids_elapsed_and_lives_valid?
    return elapsed_and_lives_included?
    if @lives > 0 && self.level != 50 || @lives > @elapsed
      errors[:base] << "Invalid number of lives"
      return false
    elsif @elapsed < self.level * 300
      errors[:base] << "Invalid elapsed time"
      return false
    end
    true
  end

  belongs_to :game
end