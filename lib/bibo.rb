require "bibo/version"

module Bibo
  class Bibo
    attr_accessor :content

    def initialize(src)
      @content = JSON.parse(File.readlines(src.downcase))
    end

    def question(question)
      filtered_question = question.downcase.strip.delete(" ").gsub!(/[^0-9A-Za-z]/, '')
      find_anwser(filtered_question)
    end

    private

    def find_anwser(content)
      content.each do |content|
        if content.include?(@question)
          anwser = content.value
          anwser[Random.rand(0..answer.size-1)]
        else
          "Nani?"
        end
      end
    end
  end
end
