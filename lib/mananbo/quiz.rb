require_relative "data"
require_relative "problem"

module Mananbo
  class Quiz
    def initialize
      @problems = []
      Data.request.each do |item|
        @problems << Problem.new(item)
      end
    end

    def start
      @problems.each do |problem|
        problem.ask
      end
    end
  end
end
