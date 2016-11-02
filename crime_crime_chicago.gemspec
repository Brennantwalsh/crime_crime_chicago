# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crime_crime_chicago/version'

Gem::Specification.new do |spec|
  spec.name          = "crime_crime_chicago"
  spec.version       = CrimeCrimeChicago::VERSION
  spec.authors       = ["Brennantwalsh"]
  spec.email         = ["brennanthomaswalsh@gmail.com"]
  spec.license =       "MIT"
  spec.summary       = %q{Crime! In Chicago!}
  spec.description   = %q{This is a list of Crime! In Chicago. A bit ago}
  spec.homepage      = "https://github.com/Brennantwalsh/crime_crime_chicago"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "unirest"
end
