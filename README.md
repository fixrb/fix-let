# Fix::Let

[![Build Status](https://travis-ci.org/fixrb/fix-let.svg?branch=master)][travis]
[![Gem Version](https://badge.fury.io/rb/fix-let.svg)][gem]
[![Inline docs](http://inch-ci.org/github/fixrb/fix-let.svg?branch=master)][inchpages]
[![Documentation](http://img.shields.io/:yard-docs-38c800.svg)][rubydoc]

> Provides `let` method for memoized helper definition.

## Contact

* Home page: https://github.com/fixrb/fix-let
* Bugs/issues: https://github.com/fixrb/fix-let/issues
* Support: https://stackoverflow.com/questions/tagged/fixrb

## Rubies

* [MRI](https://www.ruby-lang.org/)
* [Rubinius](http://rubini.us/)
* [JRuby](http://jruby.org/)

## Installation

__Fix::Let__ is cryptographically signed.

To be sure the gem you install hasn't been tampered with, add my public key (if you haven't already) as a trusted certificate:

    $ gem cert --add <(curl -Ls https://raw.github.com/fixrb/fix-let/master/certs/gem-fixrb-public_cert.pem)
    $ gem install fix-let -P HighSecurity

The `HighSecurity` trust profile will verify all gems.  All of __Fix::Let__'s dependencies are signed.

Or add this line to your application's Gemfile:

```ruby
gem 'fix-let'
```

And then execute:

    $ bundle

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

## Security

As a basic form of security __Fix::Let__ provides a set of SHA512 checksums for
every Gem release.  These checksums can be found in the `checksum/` directory.
Although these checksums do not prevent malicious users from tampering with a
built Gem they can be used for basic integrity verification purposes.

The checksum of a file can be checked using the `sha512sum` command.  For
example:

    $ sha512sum pkg/fix-let-0.1.0.gem
    26198b7812a5ac118a5f2a1b63927871b3378efb071b37abb7e1ba87c1aac9f3a6b45eeae87d9dc647b194c15171b13f15e46503a9a1440b1233faf924381ff5  pkg/fix-let-0.1.0.gem

## Versioning

__Fix::Let__ follows [Semantic Versioning 2.0](http://semver.org/).

## Contributing

1. [Fork it](https://github.com/fixrb/fix-let/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

See `LICENSE.md` file.

[gem]: https://rubygems.org/gems/fix-let
[travis]: https://travis-ci.org/fixrb/fix-let
[inchpages]: http://inch-ci.org/github/fixrb/fix-let/
[rubydoc]: http://rubydoc.info/gems/fix-let/frames

***

This project is sponsored by:

[![Sashite](http://www.sashite.com/assets/img/sashite.png)](http://www.sashite.com/)
