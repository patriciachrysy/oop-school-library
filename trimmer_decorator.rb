# frozen_string_literal: true

require './base_decorator'
# the capitalize decorator class
class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name[0..9]
  end
end
