require "highline/import"

module Mananbo
  class Problem
    attr :question, :answers, :correct

    def initialize(params = {})
      @question = params["question"]
      @answers  = params["answers"]
      @correct  = params["correct"]
    end

    def ask
      choose do |menu|
        menu.header = @question
        @answers.each do |answer|
          menu.choice(answer) do check(answer) end
        end
      end
    end

    def check(answer)
      answer == @correct
    end

    private

    def clean(str)
      str.gsub(/{[^}]*}/, "")
    end
  end
end
