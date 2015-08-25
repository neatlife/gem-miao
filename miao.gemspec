# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'miao/version'

Gem::Specification.new do |spec|
  spec.name          = "miao"
  spec.version       = Miao::VERSION
  spec.authors       = ["suxiaolin"]
  spec.email         = ["suxiaolin@mail.com"]

  spec.summary       = %q{miao is a simple to learn make ruby gem.}
  spec.description   = %q{miao is a simple to learn make ruby gem.}
  spec.homepage      = "http://github.com/su-xiaolin/gem-miao"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
