# Waitlisted

Waitlisted is an easy way to manage subscribers before you launch your product. Great for beta signups and new user mangement.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'waitlisted', github: "waitlisted/waitlisted-ruby"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install waitlisted

## Usage

Setup Waitlisted to know the URL to use to manage your reservations:

```ruby
Waitlisted.configure do |config|
  config.url = "https://mysite.app.waitlisted.co/"
end
```

Or you can set the url via an environment variable

```
WAITLISTED_URL: "https://mysite.app.waitlisted.co/"
```


Then create a reservation:

```ruby
@reservation = Waitlisted::Reservation.create(email: 'test@myemail.com')
#  => #<Waitlisted::Reservation:0x00000102980258 @id="dfc56acbc7e0b249866d49fc27581816", @uuid="dfc56acbc7e0b249866d49fc27581816", @affiliate="71c1e7b5cdfd", @email="test@myemail.com", @name=nil, @position=1, @meta={"total"=>1}>
```

You can also query the api for an exisiting reservation:
```ruby
Waitlisted::Reservation.find(email: "test@test.com")
# => #<Waitlisted::Reservation:0x007fbecac2c3c0 @id="f12b29bd8a7ca8cfae639539e8507bad", @uuid="f12b29bd8a7ca8cfae639539e8507bad", @affiliate="fd2c7e6802c9", @email="test@test.com", @name=nil, @position=1, @meta={"total"=>1}>
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/waitlisted_ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
