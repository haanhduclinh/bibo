
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bibo/version"

Gem::Specification.new do |spec|
  spec.name          = "bibo"
  spec.version       = Bibo::VERSION
  spec.authors       = ["HuanNV","DucLinh"]
  spec.email         = ["huanvan.uet@gmail.com","haanhduclinh@yahoo.com"]

  spec.summary       = "Random responses from available data"
  spec.description   = "Input your data to create amazing talk"
  spec.homepage      = "https://github.com/haanhduclinh/bibo.git"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop", "~> 0.52.1"
  spec.required_ruby_version = '>= 2.1'
end
