# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Bibo::Bibo do
  describe '#run' do
    it "returns a response" do
      expect(@bibo.question("2")).to be("Hello!")
    end

    before do
      sample_json = {
        "2": "Hello!",
        "hello": [
          "hi", "2", "xin chao"
        ],
        "how are you": [
          "I'm fine", "it ok"
        ]
      }

      @bibo = Bibo::Bibo.new(sample_json)
    end
  end
end