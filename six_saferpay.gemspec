
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "six_saferpay/version"

Gem::Specification.new do |spec|
  spec.name          = "six_saferpay"
  spec.version       = SixSaferpay::VERSION
  spec.authors       = ["Fadendaten GmbH", "Felix Langenegger"]
  spec.email         = ["felix.langenegger@fadendaten.ch"]

  spec.summary       = %q{Gem for the SIX Saferpay API}
  spec.description   = %q{This Gem helps you consume the SIX Saferpay API. Accoring the documentation of API of SIX Saferpay you can define your request models and get a response object back.}
  spec.homepage      = "https://github.com/fadendaten/six_saferpay"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activesupport', '~> 6.1'

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'vcr', '~> 6.0'
  spec.add_development_dependency 'webmock', '~> 3.13'
  spec.add_development_dependency 'dotenv', '~> 2.7'
  spec.add_development_dependency 'pry', '~> 0.14'
  spec.add_development_dependency 'tty-prompt', '~> 0.23'
  spec.add_development_dependency 'simplecov', '~> 0.21'
  spec.add_development_dependency 'spinning_wheel', '~> 1.0'
  spec.add_development_dependency 'thor', '~> 1.1.0'
end
