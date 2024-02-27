# frozen_string_literal: true

require_relative "lib/pass_keyword/version"

Gem::Specification.new do |spec|
  spec.name = "pass_keyword"
  spec.version = PassKeyword::VERSION
  spec.authors = ["Łukasz Wieczorek"]
  spec.email = ["wieczorek1990@gmail.com"]

  spec.summary = "Adds pass statement to Ruby Kernel."
  spec.description = "Add this gem to verbosely mark places as passed."
  spec.homepage = "https://rubygems.org/gems/pass_keyword"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wieczorek1990/pass_keyword"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
