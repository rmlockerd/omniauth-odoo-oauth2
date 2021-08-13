# frozen_string_literal: true

require File.expand_path(
  File.join("..", "lib", "omniauth", "odoo_oauth2", "version"),
  __FILE__
)

Gem::Specification.new do |spec|
  spec.name          = "omniauth-odoo-oauth2"
  spec.version       = Omniauth::OdooOauth2::VERSION
  spec.authors       = ["Robert Lockerd"]
  spec.email         = ["rmlockerd@gmail.com"]

  spec.summary       = %(An Odoo OAuth2 strategy for Omniauth 1.x)
  spec.description   = %(An Odoo OAuth2 strategy for Omniauth. Users can log into a Rails app with Odoo credentials.)
  spec.homepage      = "https://github.com/rmlockerd/omniauth-odoo-oauth2"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "oauth2", "~> 1.1"
  spec.add_dependency "omniauth", "~> 2.0"
  spec.add_dependency "omniauth-oauth2", "~> 1.7.1"
end
