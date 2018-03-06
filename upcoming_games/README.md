# UpcomingGames

This is a command line interface gem that will pull up a list of upcoming games from a chosen platform.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'upcoming_games'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install upcoming_games

## Usage

Run 'upcoming_games' in the bin folder to get started. The user will then be prompted to choose a video game platform ("PC", "PS4", or "Xbox-One"). A list of the next 10 games to be released will be shown. User can then input a number of the game they want a description of, or press next for the next 10 games. The user can type 'list' to start the list from game 1 again, or type 'platform' to choose a new platform. Typing 'exit' will exit the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'botil4'/upcoming_games. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the UpcomingGames project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'botil4'/upcoming_games/blob/master/CODE_OF_CONDUCT.md).
