require 'rake'
require 'bump'
require 'bump/tasks'

desc "tag and push current version"
task :tag do
  version = Bump::Bump.current
  puts "tagging and pushing v#{version}"
  `git push && git tag v#{version} && git push --tags`
end
