# frozen_string_literal: true
require './lib/bibo'
require 'spec_helper'

RSpec.describe Bibo::Bibo do
  describe '#run' do
    it "returns a response" do
      expect(@bibo.question("2")).to eql("Hello!")
    end

    it "returns nani when there is no response" do
      expect(@bibo.question("3")).to eql("Nani?")
    end

    it "returns random answer" do
      acceptance_anwswer = [ "hi", "2", "xin chao" ]
      expect(acceptance_anwswer.include?(@bibo.question("hello"))).to be_truthy
    end

    before do
      src = "./tmp/sample.json"
      sample_json = {
        "2"=> "Hello!",
        "hello"=> [
          "hi", "2", "xin chao"
        ],
        "how are you"=> [
          "I'm fine", "it ok"
        ]
      }

      File.open("./tmp/sample.json", "w") { |f| f.write(sample_json.to_json) }

      @bibo = Bibo::Bibo.new(src)
    end
  end
end
