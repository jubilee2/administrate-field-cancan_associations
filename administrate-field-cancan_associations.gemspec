# frozen_string_literal: true

require_relative "lib/administrate/field/cancan_associations/version"

Gem::Specification.new do |spec|
  spec.name          = "administrate-field-cancan_associations"
  spec.version       = Administrate::Field::CancanAssociations::VERSION
  spec.authors       = ["Jubilee Tan"]
  spec.email         = ["jubilee2@gmail.com"]

  spec.summary       = "Administrate field for CanCan associations"
  spec.description   = "A field type for Administrate that integrates with CanCan associations"
  spec.homepage      = "https://github.com/jubilee2/administrate-field-cancan_associations"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "administrate", "~> 0.20"
  spec.add_dependency "cancancan", "~> 3.0"
end