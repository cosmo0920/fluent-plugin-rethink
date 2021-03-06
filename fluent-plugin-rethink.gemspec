# encoding: utf-8

$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name = "fluent-plugin-rethink"
  gem.description = "RethinkDB plugin for Fluentd"
  gem.homepage = "https://github.com/kureikain/fluent-plugin-rethink"
  gem.summary = gem.description
  gem.version = File.read("VERSION").strip
  gem.authors = ["Vinh Nguyen"]
  gem.email = "kurei@axcoto.com"
  gem.has_rdoc = false
  #gem.platform = Gem::Platform::RUBY
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']
  gem.add_dependency "fluentd", "~> 0.10.9"
  gem.add_dependency "rethinkdb", ">= 1.15.0"
  gem.add_development_dependency "rake", ">= 0.9.2"
  gem.add_development_dependency "simplecov", ">= 0.5.4"
  gem.add_development_dependency "minitest", "~> 4.7.3"
  
end
