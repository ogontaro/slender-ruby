# Slender

A library for shortening very long strings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slender'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install slender

## Usage

```ruby
Slender.configure do |config|
  # default length is 500
  config.max_string_length = 5
end

>> "too_long_string".slim_down
=> "too_l"

>> 100000.slim_down
=> 100000

>> nil.slim_down
=> nil

>> ["too_long_string", "a", 100000,["too_long_string",200000]].slim_down
=> ["too_l", "a", 100000, ["too_l", 200000]]

>> { too_long_string: "too_long_string", in: { too_long_string: "too_long_string" } }.slim_down
=> { too_long_string: "too_l", in: { too_long_string: "too_l" } }
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ogontaro/slender.
