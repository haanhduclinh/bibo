# Bibo

Welcome to Bibo. This gem purpose matching response for chatbot from text file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bibo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bibo

## Usage

### Source data example: source.json

```
{
  "2": "Hello!",
  "hello": [
    "hi", "2", "xin chao"
  ],
  "how are you": [
    "I'm fine", "it ok"
  ]
}

```
### Use

```
require 'bibo'

bibo = Bibo::Bibo.new("source.json")
bibo.question("2")

# Hello!

bibo.question("hello")

# I'm fine

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/haanhduclinh/bibo.
