# Cookbook Raketasks

The goal behind cookbook rake tasks is to remove the duplication of tasks / tools that exist between multiple cookbooks.

This gem contains common rake tasks for:

* Checking the style of the cookbook (i.e. Rubocop and FoodCritic)
* Testing the cookbook (i.e. RSpec, ChefSpec, Test Kitchen)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cookbook-raketasks'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cookbook-raketasks


## Usage

### Style Tasks

If you want to add the style tasks to your cookbook.

1. Create a `Rakefile`
2. Edit the `Rakefile`
3. Add the following require

```
require 'cookbook/raketasks/style'
```

This should give you the following tasks:

```
rake style                    # Run all style checks
rake style:chef               # Lint Chef cookbooks
rake style:ruby               # Run Ruby style checks (Rubocop)
```

### Testing (Spec) Tasks

If you want to add the spec tasks to your cookbook:

1. Create a Rakefile
2. Edit the `Rakefile`
3. Add the following require:

```
require 'cookbook/raketasks/spec'
```

### All Rake Tasks

If you want all of the tasks you can simply require the entire gem:


```
require 'cookbook/raketasks'
```

## Contributing

1. Fork it ( https://github.com/burtlo/cookbook-raketasks/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
