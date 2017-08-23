# Awesome RPN Calculator Test Resolution

[![forthebadge](http://forthebadge.com/images/badges/made-with-ruby.svg)](http://forthebadge.com) [![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)

This is an attempt to solve the given imaginary problem.

Context
-----------------

We're building this command-line calculator for people who are comfortable with UNIX-like CLI utilities.
We are starting with the basic 4 operators now but will want to eventually implement other operators and
an alternate interface (such as WebSocket, file, or TCP socket).
There's no need to implement these, but design with these future changes in mind.

Specifications
-----------------

1. The calculator should use standard input and standard output
2. It should implement the four standard arithmetic operators
3. The calculator should handle errors and recover gracefully
4. The calculator should exit when it receives a `q` command or an end of input indicator (EOF / Ctrl+D)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'awesome_rpn_calculator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install awesome_rpn_calculator

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/awesome_rpn_calculator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AwesomeRPNCalculator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/awesome_rpn_calculator/blob/master/CODE_OF_CONDUCT.md).
