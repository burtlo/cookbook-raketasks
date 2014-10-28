require 'rake'
require 'rubocop/rake_task'
require 'foodcritic'

module Cookbook
  module Raketasks
    extend Rake::DSL

    desc "Run all style checks"
    task style: ['style:chef', 'style:ruby']

    desc "Run Ruby style checks (Rubocop)"
    RuboCop::RakeTask.new("style:ruby")

    desc "Run Chef style checks (FoodCritic)"
    FoodCritic::Rake::LintTask.new("style:chef") do |t|
      t.options = {
        fail_tags: ["any"]
      }
    end

  end
end
