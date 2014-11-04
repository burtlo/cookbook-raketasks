require 'rake'
require 'rspec/core/rake_task'
require 'kitchen'

module Cookbook
  module Raketasks
    extend Rake::DSL

    desc "Run all specs"
    task spec: [ 'spec:unit', 'spec:integration' ]

    desc "Run ChefSpec examples"
    RSpec::Core::RakeTask.new("spec:unit")

    desc "Run Test Kitchen with Vagrant"
    task "spec:integration" do
      Kitchen.logger = Kitchen.default_file_logger
      Kitchen::Config.new.instances.each do |instance|
        instance.test(:always)
      end
    end

  end
end
