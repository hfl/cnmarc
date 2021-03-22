require_relative 'lib/cnmarc/version'

Gem::Specification.new do |spec|
  spec.name          = "cnmarc"
  spec.version       = Cnmarc::VERSION
  spec.authors       = ["Huang Feilong"]
  spec.email         = ["hfl@huangfeilong.com"]

  spec.summary       = %q{CNMARC is library data format in china.}
  spec.description   = %q{CNMARC is from MARC21, It used in library of china.}
  spec.homepage      = "https://rubygems.org/gems/cnmarc"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hfl/cnmarc"
  spec.metadata["changelog_uri"] = "https://github.com/hfl/cnmarc/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.license       = 'MIT'
end
