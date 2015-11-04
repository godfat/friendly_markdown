# -*- encoding: utf-8 -*-
# stub: friendly_markdown 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "friendly_markdown"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Lin Jen-Shin (godfat)"]
  s.date = "2015-11-04"
  s.description = "Simple markdown for user input, with auto-link, auto-linebreak,\nand sanitization."
  s.email = ["godfat (XD) godfat.org"]
  s.files = [
  ".gitignore",
  ".gitmodules",
  ".travis.yml",
  "Gemfile",
  "LICENSE",
  "README.md",
  "Rakefile",
  "friendly_markdown.gemspec",
  "lib/friendly_markdown.rb",
  "task/README.md",
  "task/gemgem.rb",
  "test/test_basic.rb"]
  s.homepage = "https://github.com/godfat/friendly_markdown"
  s.licenses = ["Apache License 2.0"]
  s.rubygems_version = "2.4.8"
  s.summary = "Simple markdown for user input, with auto-link, auto-linebreak,"
  s.test_files = ["test/test_basic.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<kramdown>, [">= 0"])
      s.add_runtime_dependency(%q<sanitize>, [">= 0"])
    else
      s.add_dependency(%q<kramdown>, [">= 0"])
      s.add_dependency(%q<sanitize>, [">= 0"])
    end
  else
    s.add_dependency(%q<kramdown>, [">= 0"])
    s.add_dependency(%q<sanitize>, [">= 0"])
  end
end
