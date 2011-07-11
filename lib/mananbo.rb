require "highline/import"
require_relative "mananbo/version"
require_relative "mananbo/data"
require_relative "mananbo/quiz"
require_relative "mananbo/problem"

module Mananbo
  class << self
    def run
      Data.load
      quiz = Quiz.new
      quiz.start
    end
  end
end

Mananbo.run
