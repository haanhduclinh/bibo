require "bibo/version"
require "json"

module Bibo
  class Bibo
    attr_accessor :content

    def initialize(src)
      @content = ::JSON.parse(File.read(src))
    end

    def question(question)
      filtered_question = question.downcase.strip.delete(" ")
      find_anwser(filtered_question)
    end

    private

    def find_anwser(key)
      response = @content.fetch(key, "Nani?")
      return response.sample if response.is_a?(Array)
      response
    end
  end
end
