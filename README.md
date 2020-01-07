# Fix::Let

[![Build Status](https://api.travis-ci.org/fixrb/fix-let.svg?branch=master)][travis]
[![Code Climate](https://codeclimate.com/github/fixrb/fix-let/badges/gpa.svg)][codeclimate]
[![Gem Version](https://badge.fury.io/rb/fix-let.svg)][gem]
[![Inline docs](https://inch-ci.org/github/fixrb/fix-let.svg?branch=master)][inchpages]
[![Documentation](https://img.shields.io/:yard-docs-38c800.svg)][rubydoc]

> Provides `let` method for memoized helper definition.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fix-let'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fix-let

## Usage

Given this code:

```ruby
# duck_spec.rb

require 'fix/let'

class Duck
  def swims
    'So! Swoosh...'
  end
end

Fix.describe Duck.new do
  let(:famous_word) { 'So!' }

  on :swims do
    it { MUST eql "#{famous_word} Swoosh..." }
  end
end
```

The output should look like this:

    $ ruby duck_spec.rb
    .

    Ran 1 tests in 0.000243 seconds
    100% compliant - 0 infos, 0 failures, 0 errors

## Contact

* Home page: https://github.com/fixrb/fix-let
* Bugs/issues: https://github.com/fixrb/fix-let/issues
* Support: https://stackoverflow.com/questions/tagged/fixrb

## Rubies

* [MRI](https://www.ruby-lang.org/)
* [Rubinius](http://rubini.us/)
* [JRuby](http://jruby.org/)

## Versioning

__Fix::Let__ follows [Semantic Versioning 2.0](http://semver.org/).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

***

<p>
  This project is sponsored by:<br />
  <a href="https://sashite.com/"><img
    src="https://github.com/fixrb/fix-let/raw/master/img/sashite.png"
    alt="Sashite" /></a>
</p>

[gem]: https://rubygems.org/gems/fix-let
[travis]: https://travis-ci.org/fixrb/fix-let
[codeclimate]: https://codeclimate.com/github/fixrb/fix-let
[inchpages]: http://inch-ci.org/github/fixrb/fix-let
[rubydoc]: http://rubydoc.info/gems/fix-let/frames
