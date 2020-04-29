require_relative 'lib/equintanilla_palindrome/version'

Gem::Specification.new do |spec|
  spec.name          = "equintanilla_palindrome"
  spec.version       = EquintanillaPalindrome::VERSION
  spec.authors       = ["Erick Quintanilla"]
  spec.email         = ["equintanilla@berkeley.edu"]

  spec.summary       = %q{Palindrone detector.}
  spec.description   = %q{Learn Enough Ruby palindrome detector.}
  spec.homepage      = "https://github.com/qkcire/equintanilla_palindrome"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/qkcire/equintanilla_palindrome"
  spec.metadata["changelog_uri"] = "https://github.com/qkcire/equintanilla_palindrome"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
