require "yaml"

module Mananbo
  class Data
    APP_YAML_PATH = File.dirname(__FILE__) + "/data.yml"
    USER_YAML_PATH = File.expand_path("~/.mananbo/data.yml")

    class << self
      def load
        input = File.new(APP_YAML_PATH)
        @data = YAML.load(input.read)
        input.close
      end

      def request
        @data
      end

      def save
        output = File.new(USER_YAML_PATH)
        output.puts YAML.dump(@data)
        output.close
      end
    end
  end
end
