lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/capistrano/ssh/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano3-ssh"
  spec.version       = Capistrano::Ssh::VERSION
  spec.authors       = ["wangjianxing"]
  spec.email         = ["frankwang1024@foxmail.com"]

  spec.summary       = %q{Capistrano3, ssh to server.}
  spec.description   = %q{Capistrano3, ssh to server.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["source_code_uri"] = "https://github.com/wangjianxing/capistrano3-ssh"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '>= 3.0'
  spec.add_dependency 'capistrano-rails'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
